defmodule UnfSwuber.RoomChannel do
  use Phoenix.Channel
  def join("room:lobby", _message, socket) do
    side_effects("room:lobby", _message, socket)
    {:ok, socket}
  end
  def join("room:" <> _private_room_id, _params, _socket) do
    {:error, %{reason: "unauthorized"}}
  end
  def handle_in("new_msg", %{"body" => body}, socket) do
    IO.puts "JUST HANDLED AN IN"
    broadcast! socket, "new_msg", %{body: body}
    {:noreply, socket}
  end
  def side_effects("room:lobby", _message, socket) do
    IO.puts ""
    pid = self()
    IO.puts "Manual Programmer gathering input follows."
    checkalive = Process.alive?(self())
    IO.inspect _message, label: " showing empty message:"
    IO.inspect pid, label: " showing process ID matching pid of inspect:"
    IO.puts "\nprocess alive? #{checkalive}"
    IO.puts "room channel entered and not office channel"
    IO.inspect socket, label: "\n socket information when joining room:\n"
  end
end

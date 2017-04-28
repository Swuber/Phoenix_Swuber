defmodule UnfSwuber.RoomChannel do
  use Phoenix.Channel
  def join("room:lobby", _message, socket) do
    IO.puts "room channel and not office channel"
    {:ok, socket}
  end
  def join("room:" <> _private_room_id, _params, _socket) do
    {:error, %{reason: "unauthorized"}}
  end
  def handle_in("new_msg", %{"body" => body}, socket) do
    broadcast! socket, "new_msg", %{body: body}
    {:noreply, socket}
  end
end

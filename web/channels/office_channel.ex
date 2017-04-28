defmodule UnfSwuber.OfficeChannel do
  use Phoenix.Channel
  def join("office:lobby", _message, socket) do
    IO.puts "Office channel and not room channel"
    {:ok, socket}
  end
  def join("office:" <> _private_room_id, _params, _socket) do
    {:error, %{reason: "unauthorized"}}
  end
  def handle_in("new_msg", %{"body" => body}, socket) do
    broadcast! socket, "new_msg", %{body: body}
    {:noreply, socket}
  end
end

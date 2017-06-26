defmodule UnfSwuber.PageController do
  use UnfSwuber.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

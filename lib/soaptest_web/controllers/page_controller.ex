defmodule SoaptestWeb.PageController do
  use SoaptestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

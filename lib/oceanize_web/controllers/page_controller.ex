defmodule OceanizeWeb.PageController do
  use OceanizeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

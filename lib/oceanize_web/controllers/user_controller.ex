defmodule OceanizeWeb.UserController do
  use OceanizeWeb, :controller
  alias Oceanize.{Repo, User}

  def index(conn, _params) do
    users = Repo.all(User)

    json(conn, users)
  end
end

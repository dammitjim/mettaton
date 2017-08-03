defmodule MettatonWeb.PageController do
  use MettatonWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

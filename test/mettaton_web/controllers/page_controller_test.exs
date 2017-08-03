defmodule MettatonWeb.PageControllerTest do
  use MettatonWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Nifty landing page"
  end
end

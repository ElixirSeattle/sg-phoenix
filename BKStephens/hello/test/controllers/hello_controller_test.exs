defmodule Hello.HelloControllerTest do
  use Hello.ConnCase

  test "GET /hello/:name" do
    conn = get conn(), "/hello/ben"
    assert html_response(conn, 200) =~ "Hello Ben!"
  end
end

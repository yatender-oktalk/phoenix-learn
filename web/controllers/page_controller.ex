defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  def index(conn, params) do
    redirect conn, external: "http://elixir-lang.org/"
  end

  def redirect_test(conn, _params) do
    text conn, "redirected man YO!"
  end

end

defmodule HelloPhoenix.HelloController do
  use HelloPhoenix.Web, :controller
#  import poison

  def index(conn,_params) do

    conn
    |>put_status(:not_found)
    |>render(HelloPhoenix.ErrorView,  "404.html" )
  end

  def show(conn, params) do
#    render conn, "show.html" , messenger: messenger, q: q
    conn
      |> assign(:messenger,params["q"])
      |> assign(:q, params["messenger"])
      |> render("show.html")
  end
end
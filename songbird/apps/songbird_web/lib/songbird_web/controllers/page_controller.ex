defmodule SongbirdWeb.PageController do
  use SongbirdWeb, :controller
  alias Phoenix.LiveView

  def index(conn, _params) do
    # render(conn, "index.html")
    LiveView.Controller.live_render(conn, SongbirdWeb.VizView, session: %{})
  end
end

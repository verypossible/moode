defmodule SongbirdWeb.VizView do
  use Phoenix.LiveView

  def render(assigns) do
    SongbirdWeb.PageView.render("index.html", assigns)
  end

  def mount(_session, socket) do
    {:ok, assign(socket, live_viz: "Live view bitches")}
  end
end

defmodule SongbirdWeb.VizView do
  use Phoenix.LiveView

  @tick_interval 500

  def render(assigns) do
    SongbirdWeb.PageView.render("index.html", assigns)
  end

  def mount(_session, socket) do
    if connected?(socket), do: Process.send_after(self(), :tick, @tick_interval)
    {:ok, assign(socket, music_val: :rand.uniform())}
  end

  def handle_info(:tick, socket) do
    Process.send_after(self(), :tick, @tick_interval)
    {:noreply, assign(socket, music_val: :rand.uniform())}
  end

  def handle_event("play", _, socket) do
    IO.inspect("play")
    System.command("mpc", ["toggle"])
    {:noreply, socket}
  end

  def handle_event("previous", _, socket) do
    IO.inspect("previous")
    System.command("mpc", ["prev"])
    {:noreply, socket}
  end

  def handle_event("next", _, socket) do
    IO.inspect("next")
    System.command("mpc", ["next"])
    {:noreply, socket}
  end
end

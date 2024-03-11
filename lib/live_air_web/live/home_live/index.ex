defmodule LiveAirWeb.HomeLive.Index do
  use LiveAirWeb, :surface_live_view
  import LiveAirWeb.Gettext

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply,
     socket
     |> apply_action(socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "LiveAir")
  end
end

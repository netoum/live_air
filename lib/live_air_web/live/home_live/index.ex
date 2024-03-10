defmodule LiveAirWeb.HomeLive.Index do
  use LiveAirWeb, :surface_live_view
  alias Moon.Design.Button
  alias Moon.Design.BottomSheet
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

  @impl true

  def handle_event("set_open", _, socket) do
    BottomSheet.open("modal_bottom_sheet")
    {:noreply, socket}
  end

  @impl true

  def handle_event("set_close", _, socket) do
    BottomSheet.close("modal_bottom_sheet")
    {:noreply, socket}
  end
end

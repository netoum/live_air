defmodule LiveAirWeb.Layouts.Header do
  use Surface.LiveComponent
  import LiveAirWeb.Gettext
  alias Moon.Design.Dropdown
  alias Moon.Design.Chip

  @impl true
  def handle_event(event_name, event_params, socket) do
    case event_name do
      "select_language" -> handle_select_language(event_params, socket)
    end
  end

  defp handle_select_language(event_params, socket) do
    %{"value" => language} = event_params
    {:noreply,
     socket
     |> redirect(to: "/#{language}")}
  end
end

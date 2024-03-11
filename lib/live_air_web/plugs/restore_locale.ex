defmodule LiveAirWeb.Plugs.RestoreLocale do
  def on_mount(:default, %{"locale" => locale}, _session, socket) do
    if Cldr.known_locale_name?(String.to_atom(locale)) do
      Gettext.put_locale(locale)
    end

    {:cont, socket}
  end

  # catch-all case
  def on_mount(:default, _params, _session, socket), do: {:cont, socket}
end

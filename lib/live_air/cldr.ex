defmodule LiveAir.Cldr do
  @moduledoc """
  Define a backend module that will host our
  Cldr configuration and public API.

  Most function calls in Cldr will be calls
  to functions on this module.
  """
  use Cldr,
    locales: ["en", "fr"],
    default_locale: "en",
    gettext: LiveAirWeb.Gettext,
    providers: [
      Cldr.Number,
      Cldr.Calendar,
      Cldr.DateTime,
      Cldr.Territory,
      Cldr.LocaleDisplay
    ]
end

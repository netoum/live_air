defmodule LiveAirWeb.Layouts do
  use LiveAirWeb, :html

  embed_sface("layouts/app.sface")
  embed_sface("layouts/root.sface")
end

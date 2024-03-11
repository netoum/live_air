defmodule LiveAirWeb.Layouts do
  use LiveAirWeb, :html
  alias LiveAirWeb.Layouts.Header

  embed_sface("layouts/app.sface")
  embed_sface("layouts/root.sface")
end

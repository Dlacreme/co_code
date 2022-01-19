defmodule SessionLive.ExplorerComponent do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_component
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <section class="explorer">
    <div class="folders">
    </div>
    <div class="actions">
    </div>
    </section>
    """
  end
end

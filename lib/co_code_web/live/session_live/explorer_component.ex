defmodule SessionLive.ExplorerComponent do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_component
  use Phoenix.LiveComponent
  alias CCWeb.HTMLHelpers
  alias Phoenix.LiveView.JS

  @modal_id "explorer-new"

  def render(assigns) do
    ~H"""
    <section class="explorer">
    <%= render_folder(assigns, "Explorer") %>
    <div class="folders">
    </div>
    <div class="actions">
    </div>
    <%= render_modal(assigns) %>
    </section>
    """
  end

  def render_folder(assigns, label) do
    ~H"""
    <div class="item folder">
    <span><%= label %></span>
    <button title="Add file" phx-click={show_new_modal("file")} ><%= HTMLHelpers.icon("description") %></button>
    <button title="Add folder" phx-click={show_new_modal("folder")} ><%= HTMLHelpers.icon("folder") %></button>
    </div>
    """
  end

  def show_new_modal(type, parent \\ "") do
    %JS{}
    |> JS.show(transition: "fade-in", to: "##{@modal_id}")
    |> JS.set_attribute({"value", type}, to: "##{@modal_id}-input-type")
    |> JS.set_attribute({"parent", parent}, to: "##{@modal_id}-input-parent")
  end

  def hide_new_modal() do
    %JS{}
    |> JS.hide(transition: "fade-out", to: "##{@modal_id}")
    |> JS.hide(transition: "fade-out-scale", to: "##{@modal_id}")
  end

  defp render_modal(assigns) do
    modal_id = @modal_id

    ~H"""
      <div id={modal_id} class="phx-modal" phx-remove={hide_new_modal()} style="display: none">
      <div
      	id="modal-content"
      	class="phx-modal-content"
      	phx-click-away={hide_new_modal()}
      	phx-window-keydown={hide_new_modal()}
      	phx-key="escape"
      >
    <div class="row">
    <h3 class="flex-grow">Create</h3>
      	<button class="phx-modal-close" phx-click={hide_new_modal()}>✖</button>
    </div>
    <form class="row" phx-submit="explorer_new">
    <input type="hidden" name="type" value="file" id={"#{modal_id}-input-type"} />
    <input type="hidden" name="parent" value="" id={"#{modal_id}-input-parent"} />
    <input type="text" name="filename" class="flex-grow" required />
    <button type="submit"><%= HTMLHelpers.icon("add") %></button>
    </form>
      </div>
      </div>
    """
  end
end

defmodule DemoWeb.HelloLive do
  use Phoenix.HTML
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
     {:ok, assign(socket, name: "?")}
  end

  def render(assigns) do
    ~L"""
    <h1>Hello, <%= @name %></h1>
    <button phx-click="sdf">+</button>
    """
  end

  def handle_event("sdf", _, socket) do
    socket = assign(socket, name: "kristian")
    {:noreply, socket}
  end
end
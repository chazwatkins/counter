defmodule CounterWeb.CounterLive do
  use Phoenix.LiveView

  def mount(_session, socket) do
    socket = assign(socket, count: 0)
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <h1>Count: <%= @count %></h1>
    <button phx-click="increment">+</button>
    <button phx-click="decrement">-</button>
    """
  end

  def handle_event("increment", _, socket) do
    count = socket.assigns.count + 1
    {:noreply, assign(socket, count: count)}
  end

  def handle_event("decrement", _, socket) do
    count = socket.assigns.count - 1
    {:noreply, assign(socket, count: count)}
  end
end

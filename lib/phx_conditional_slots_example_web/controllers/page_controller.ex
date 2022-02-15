defmodule PhxConditionalSlotsExampleWeb.PageController do
  use PhxConditionalSlotsExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
  
  def invalid_slot_entry(conn, _params) do
    render(conn, "invalid_slot_entry.html")
  end
end

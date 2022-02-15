defmodule PhxConditionalSlotsExampleWeb.Router do
  use PhxConditionalSlotsExampleWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {PhxConditionalSlotsExampleWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhxConditionalSlotsExampleWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/invalid_slot_entry", PageController, :invalid_slot_entry
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhxConditionalSlotsExampleWeb do
  #   pipe_through :api
  # end
end

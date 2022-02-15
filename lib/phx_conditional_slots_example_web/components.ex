defmodule PhxConditionalSlotsExample.Components do
  use PhxConditionalSlotsExampleWeb, :component
  
  def table(assigns) do
    ~H"""
    <div class="table-responsive">
      <table class="table table-sm table-hover">
        <thead>
          <tr>
            <%= for col <- @col do %>
              <th><%= col.label %></th>
            <% end %>
          </tr>
        </thead>
        <tbody>
          <%= for row <- @rows do %>
            <tr>
              <%= for col <- @col do %>
                <td class={col[:class]}><%= render_slot(col, row) %></td>
              <% end %>
            </tr>
          <% end %>
        </tbody>
      </table>
    </div>
    """
  end
end

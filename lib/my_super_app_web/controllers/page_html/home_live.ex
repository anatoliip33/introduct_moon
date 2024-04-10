defmodule MySuperAppWeb.HomeLive do
  use MySuperAppWeb, :surface_live_view

  alias Moon.Autolayouts.TopToDown
  alias Moon.Components.Heading
  alias Moon.Design.Button

  def render(assigns) do
    ~F"""
    <TopToDown class="max-w-sm p-4 m-auto gap-4">
      <Heading size={24} class="text-center" is_regular>Hey!</Heading>
      <Button size="xs">First Moon Button</Button>
    </TopToDown>
    """
  end
end

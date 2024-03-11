defmodule MySuperAppWeb.Tabs do
	use MySuperAppWeb, :surface_live_view

  alias Moon.Design.Tabs
  alias Moon.Design.Accordion

  import MoonWeb.Helpers.Lorem

  def render(assigns) do
    ~F"""
    <Tabs id="tabs-ex-1">
      <Tabs.List>
        <Tabs.Tab>First tab</Tabs.Tab>
        <Tabs.Tab>Second tab</Tabs.Tab>
        <Tabs.Tab>Third tab</Tabs.Tab>
      </Tabs.List>
      <Tabs.Panels>
        <Tabs.Panel>{lorem()}</Tabs.Panel>
        <Tabs.Panel>{ipsum()}</Tabs.Panel>
        <Tabs.Panel>{dolor()}</Tabs.Panel>
      </Tabs.Panels>
    </Tabs>
    <div class="flex p-4 bg-gohan rounded-moon-s-sm text-moon-14 w-full">
      <Tabs id="tabs-with-pills" class="background-color:trunks">
        <Tabs.List tab_titles={["First pill", "Second pill", "Third pill"]} tab_module={Tabs.Pill}/>
        <Tabs.Panels>
          <Tabs.Panel>{lorem()}</Tabs.Panel>
          <Tabs.Panel>{ipsum()}</Tabs.Panel>
          <Tabs.Panel>{dolor()}</Tabs.Panel>
        </Tabs.Panels>
      </Tabs>
    </div>
    <Tabs id="tabs-with-segments">
      <Tabs.List tab_titles={["First pill", "Second pill", "Third pill"]} tab_module={Tabs.Segment}/>
      <Tabs.Panels>
        <Tabs.Panel>{lorem()}</Tabs.Panel>
        <Tabs.Panel>{ipsum()}</Tabs.Panel>
        <Tabs.Panel>{dolor()}</Tabs.Panel>
      </Tabs.Panels>
    </Tabs>
    <br>
    <Accordion id="simple-accordion">
      <Accordion.Item>
        <Accordion.Header title="Lorem"/>
        <Accordion.Content>{lorem()}</Accordion.Content>
      </Accordion.Item>
      <Accordion.Item>
        <Accordion.Header class="bg-beerus">Beerus bg</Accordion.Header>
        <Accordion.Content class="bg-beerus">{ipsum()}</Accordion.Content>
      </Accordion.Item>
      <Accordion.Item>
        <Accordion.Header>Dolor</Accordion.Header>
        <Accordion.Content>{dolor()}</Accordion.Content>
      </Accordion.Item>
    </Accordion>
    """
  end
end

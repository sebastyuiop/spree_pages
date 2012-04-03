Deface::Override.new(
  :name => "add_pages_tab_to_admin",
  :virtual_path => "spree/layouts/admin",
  :insert_bottom => "[data-hook='admin_tabs']",
  :text => %(<%= tab(:pages) %>)
)

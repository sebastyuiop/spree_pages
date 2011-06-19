class SpreePagesHooks < Spree::ThemeSupport::HookListener
  
  Deface::Override.new(
    :virtual_path => "layouts/admin",
    :insert_bottom => "[data-hook='admin_tabs']",
    :text => %(<%= tab(:pages) %>)
  )
  
end
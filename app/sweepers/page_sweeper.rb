class PageSweeper < ActionController::Caching::Sweeper
  observe Page
  
  def after_update(page)
    expire_page_cache(page)
  end
  
  def after_destroy(page)
    expire_page_cache(page)
  end

private
  
  def expire_page_cache(page)
    expire_action(:controller => '/pages', :action => 'show', :id => page.permalink)
  end
  
end

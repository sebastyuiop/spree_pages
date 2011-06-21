class PagesController < Spree::BaseController
  before_filter { render_404 if params[:id] =~ /(\.|\\)/ }
  
  rescue_from ActionView::MissingTemplate, :with => :render_404
  caches_page :show, :if => Proc.new { Spree::Config[:cache_static_content] }
  
  respond_to :html
  
  # GET /pages/about-us
  def show
    @page = Page.published.find_by_permalink(params[:id])
    if @page.blank?
      render_404
    else
      respond_to do |format|
        format.html # show.html.erb
      end
    end
  end
  
end

module Spree
  class PagesController < BaseController
    before_filter { render_404 if params[:id] =~ /(\.|\\)/ }

    caches_action :show, :if => Proc.new { Config[:cache_static_content] }, :layout => false

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
end

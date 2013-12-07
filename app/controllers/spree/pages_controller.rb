module Spree
  class PagesController < BaseController
    include Spree::Core::ControllerHelpers::Order

    layout 'spree/layouts/spree_application'

    before_filter { render_404 if params[:id] =~ /(\.|\\)/ }

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

class PagesController < Spree::BaseController

  # GET /pages/about-us
  def show
    @page = Page.where(:published => true, :permalink => params[:id]).first

    respond_to do |format|
      format.html # show.html.erb
    end
  end

end

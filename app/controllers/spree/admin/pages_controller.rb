module Spree
  class Admin::PagesController < Admin::ResourceController
    def index
      @pages = Page.page(params[:page])
    end
    
    def new
      @page = Page.new
    end
    
    def create
      @page = Page.new(pages_params)
      if @page.save
        flash[:notice] = "Successfully created page."
        redirect_to admin_pages_url
      else
        render :action => 'new'
      end
    end
    
    def edit
      @page = Page.find(params[:id])
    end
    
    def update
      @page = Page.find(params[:id])
      if @page.update_attributes(pages_params)
        flash[:notice] = "Successfully updated page."
        redirect_to admin_pages_url
      else
        render :action => 'edit'
      end
    end
    
    def destroy
      @object = Page.find(params[:id])
      invoke_callbacks(:destroy, :before)
      if @object.destroy
        invoke_callbacks(:destroy, :after)
        flash.notice = flash_message_for(@object, :successfully_removed)
        respond_with(@object) do |format|
          format.html { redirect_to admin_pages_url }
          format.js   { render :partial => "spree/admin/shared/destroy" }
        end
      else
        invoke_callbacks(:destroy, :fails)
        respond_with(@object) do |format|
          format.html { redirect_to admin_pages_url }
        end
      end
    end

    protected

    def pages_params
      params.require(:page).permit(:title, :meta_keywords, :meta_description, :body, :permalink, :published)
    end
  end
end

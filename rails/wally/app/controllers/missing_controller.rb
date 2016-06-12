class MissingController < ApplicationController

  def new
    @dato = Missing.new
    flash[:some_name]= params[:param_name]
    flash[:some_lastname]= params[:param_lastname]
    flash[:some_phone]= params[:param_phone]
    flash[:some_email]= params[:param_email]
    flash[:some_docutype]= params[:param_docutype]
    flash[:some_id]= params[:param_id]

  end

  def create
    @dato = Missing.new(params[:post].permit(:name, :lastname, :gender, :contexture, :height, :lastknownposition, :lastdress, :frequentplaces, :image))
    @inf= Informer.new(:name => flash[:some_name], :lastname => flash[:some_lastname], :phone => flash[:some_phone], :email => flash[:some_email], :docutype => flash[:some_docutype], :identification => flash[:some_id])
    respond_to do |format|
      if @dato.save && @inf.save

        # format.html { redirect_to :action => :newinformer, :id =>@dato.id}
        format.html { redirect_to url_for(:controller => :informer, :action => :newinformer) }
      else
        format.html { render :new }

      end
    end
  end

end

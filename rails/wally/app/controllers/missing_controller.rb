class MissingController < ApplicationController

 def new
    @dato = Missing.new
  end
 def create
    @dato = Missing.new(params[:post].permit(:name,:lastname,:gender,:contexture,:height,:lastknownposition,:lastdress,:frequentplaces,:image))

    respond_to do |format|
      if @dato.save
       
    # format.html { redirect_to :action => :newinformer, :id =>@dato.id}
format.html { redirect_to url_for(:controller => :informer,:action => :newinformer)}
      else
         format.html { render :new }
         
      end
    end
  end
   def newinformer 
 @dato = Rll.new
       end
end

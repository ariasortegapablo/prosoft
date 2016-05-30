class InformerController < ApplicationController

 def newinformer
    @dato = Informer.new
  end
 def create
    @dato = Informer.new(params[:post].permit(:name,:lastname,:phone,:email,:docutype,:identification))

    respond_to do |format|
      if @dato.save
       
     #format.html { redirect_to :action => :show, :id =>@dato.id}
       format.html { redirect_to url_for(:controller => :missing,:action => :new)}
      else
         format.html { render :new }
         
      end
    end
  end
   def show 
      end
  
end

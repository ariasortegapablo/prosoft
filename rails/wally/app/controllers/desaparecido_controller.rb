class DesaparecidoController < ApplicationController

def new
    @dato = Datosd.new
  end
 def create
    @dato = Datosd.new(params[:post].permit(:nombre,:apellido,:genero,:contextura,:altura,:upc,:uv,:lqf))

    respond_to do |format|
      if @dato.save
       
     format.html { redirect_to :action => :show, :id =>@dato.id}
      else
         format.html { render :new }
       
      end
    end
  end
   def show 
       end
  
end

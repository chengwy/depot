class SubclassesController < ApplicationController
  def create
  	@type = Type.find(params[:type_id])  
    @subclass = @type.subclasses.build(params[:subclass])  
    @subclass.save  
  
    redirect_to @type 
  end

  def destroy
  	@subclass = Subclass.find(params[:id])  
    @subclass.destroy  
  
    redirect_to @subclass.type
  end
end

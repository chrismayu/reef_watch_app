class EquipmentImportsController < ApplicationController
 
 
  def new
    @equipment_import = EquipmentImport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipment_import }
    end
  end

   
  def create
    @equipment_import = EquipmentImport.new(params[:equipment_import])

    respond_to do |format|
      if @equipment_import.save
         format.html { redirect_to equipment_index_path, notice: 'Equipment was successfully imported.' }
         else
           render :new
         end
    end
  end

  
end

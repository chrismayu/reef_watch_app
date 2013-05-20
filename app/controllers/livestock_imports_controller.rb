class LivestockImportsController < ApplicationController
 
 
  def new
    @livestock_import = LivestockImport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @livestock_import }
    end
  end
 
  def create
    @livestock_import = LivestockImport.new(params[:livestock_import])

    respond_to do |format|
      if @livestock_import.save
        format.html { redirect_to livestocks_url, notice: "Imported LiveStock successfully."}
         else
           render :new
         end
    end
  end

   
end

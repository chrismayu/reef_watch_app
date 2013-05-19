class LivestocksController < ApplicationController
  # GET /livestocks
  # GET /livestocks.json
  def index
    @livestocks = Livestock.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @livestocks }
    end
  end

  # GET /livestocks/1
  # GET /livestocks/1.json
  def show
    @livestock = Livestock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @livestock }
    end
  end

  # GET /livestocks/new
  # GET /livestocks/new.json
  def new
    @livestock = Livestock.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @livestock }
    end
  end

  # GET /livestocks/1/edit
  def edit
    @livestock = Livestock.find(params[:id])
  end

  # POST /livestocks
  # POST /livestocks.json
  def create
    @livestock = Livestock.new(params[:livestock])

    respond_to do |format|
      if @livestock.save
        format.html { redirect_to @livestock, notice: 'Livestock was successfully created.' }
        format.json { render json: @livestock, status: :created, location: @livestock }
      else
        format.html { render action: "new" }
        format.json { render json: @livestock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /livestocks/1
  # PUT /livestocks/1.json
  def update
    @livestock = Livestock.find(params[:id])

    respond_to do |format|
      if @livestock.update_attributes(params[:livestock])
        format.html { redirect_to @livestock, notice: 'Livestock was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @livestock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /livestocks/1
  # DELETE /livestocks/1.json
  def destroy
    @livestock = Livestock.find(params[:id])
    @livestock.destroy

    respond_to do |format|
      format.html { redirect_to livestocks_url }
      format.json { head :no_content }
    end
  end
end

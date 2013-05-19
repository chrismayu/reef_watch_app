class ReefTanksController < ApplicationController
  # GET /reef_tanks
  # GET /reef_tanks.json
  def index
    @reef_tanks = ReefTank.all
    @watchers = Watcher.first
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reef_tanks }
    end
  end

  # GET /reef_tanks/1
  # GET /reef_tanks/1.json
  def show
    @reef_tank = ReefTank.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reef_tank }
    end
  end

  # GET /reef_tanks/new
  # GET /reef_tanks/new.json
  def new
    @reef_tank = ReefTank.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reef_tank }
    end
  end

  # GET /reef_tanks/1/edit
  def edit
    @reef_tank = ReefTank.find(params[:id])
  end

  # POST /reef_tanks
  # POST /reef_tanks.json
  def create
    @reef_tank = ReefTank.new(params[:reef_tank])

    respond_to do |format|
      if @reef_tank.save
        format.html { redirect_to @reef_tank, notice: 'Reef tank was successfully created.' }
        format.json { render json: @reef_tank, status: :created, location: @reef_tank }
      else
        format.html { render action: "new" }
        format.json { render json: @reef_tank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reef_tanks/1
  # PUT /reef_tanks/1.json
  def update
    @reef_tank = ReefTank.find(params[:id])

    respond_to do |format|
      if @reef_tank.update_attributes(params[:reef_tank])
        format.html { redirect_to @reef_tank, notice: 'Reef tank was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reef_tank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reef_tanks/1
  # DELETE /reef_tanks/1.json
  def destroy
    @reef_tank = ReefTank.find(params[:id])
    @reef_tank.destroy

    respond_to do |format|
      format.html { redirect_to reef_tanks_url }
      format.json { head :no_content }
    end
  end
end

class AlarmCodesController < ApplicationController
  # GET /alarm_codes
  # GET /alarm_codes.json
  def index
    @alarm_codes = AlarmCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alarm_codes }
    end
  end

  # GET /alarm_codes/1
  # GET /alarm_codes/1.json
  def show
    @alarm_code = AlarmCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alarm_code }
    end
  end

  # GET /alarm_codes/new
  # GET /alarm_codes/new.json
  def new
    @alarm_code = AlarmCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alarm_code }
    end
  end

  # GET /alarm_codes/1/edit
  def edit
    @alarm_code = AlarmCode.find(params[:id])
  end

  # POST /alarm_codes
  # POST /alarm_codes.json
  def create
    @alarm_code = AlarmCode.new(params[:alarm_code])

    respond_to do |format|
      if @alarm_code.save
        format.html { redirect_to @alarm_code, notice: 'Alarm code was successfully created.' }
        format.json { render json: @alarm_code, status: :created, location: @alarm_code }
      else
        format.html { render action: "new" }
        format.json { render json: @alarm_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /alarm_codes/1
  # PUT /alarm_codes/1.json
  def update
    @alarm_code = AlarmCode.find(params[:id])

    respond_to do |format|
      if @alarm_code.update_attributes(params[:alarm_code])
        format.html { redirect_to @alarm_code, notice: 'Alarm code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @alarm_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alarm_codes/1
  # DELETE /alarm_codes/1.json
  def destroy
    @alarm_code = AlarmCode.find(params[:id])
    @alarm_code.destroy

    respond_to do |format|
      format.html { redirect_to alarm_codes_url }
      format.json { head :no_content }
    end
  end
end

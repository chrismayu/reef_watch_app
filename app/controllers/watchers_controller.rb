class WatchersController < ApplicationController
  # GET /watchers
  # GET /watchers.json
  
  protect_from_forgery :except => [:create]

   def create
     Watcher.create!(:params => params, :temp => params[:m_t],  :skimmer => params[:skim], :code => params[:h_c], :temp_name => params[:t_n], :day_light=> params[:daylight], :powerhead => params[:ph], :ambient_temp => params[:a_t], :main_pump => params[:m_p], :ato_pump => params[:ato], :heater => params[:h]
     )
    render :nothing => true

   #  , :day_light=> params[:daylight], :powerhead => params[:powerhead], :ambient_temp => params[:ambient_temp], :ph_level => params[:ph_level, :main_pump => params[:main_pump], :heater => params[:heater]
   
   #:skimmer => params[:skim],
   
   	#data_collection = Watcher.new(params[:data])
 #  data_collection.save!
  # respond_to do |format|
  ##    format.json { head :ok }
  #    end
    
    
   end
  
  
  
  
  def index
   @watcherschart = Watcher.all
   watcherlast = Watcher.first
   # @watchers = Watcher.all
    @watchers = Watcher.paginate(page: params[:page], :per_page => 20)
    @alarm_codes = AlarmCode.where(:tank_name => watcherlast.temp_name)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @watchers }
    end
  end

  # GET /watchers/1
  # GET /watchers/1.json
  def show
    @watcher = Watcher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @watcher }
    end
  end

  # GET /watchers/new
  # GET /watchers/new.json
  def new
    @watcher = Watcher.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @watcher }
    end
  end

  # GET /watchers/1/edit
  def edit
    @watcher = Watcher.find(params[:id])
  end

  # POST /watchers
  # POST /watchers.json
  def create_old
    @watcher = Watcher.new(params[:watcher])

    respond_to do |format|
      if @watcher.save
        format.html { redirect_to @watcher, notice: 'Watcher was successfully created.' }
        format.json { render json: @watcher, status: :created, location: @watcher }
      else
        format.html { render action: "new" }
        format.json { render json: @watcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /watchers/1
  # PUT /watchers/1.json
  def update
    @watcher = Watcher.find(params[:id])

    respond_to do |format|
      if @watcher.update_attributes(params[:watcher])
        format.html { redirect_to @watcher, notice: 'Watcher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @watcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watchers/1
  # DELETE /watchers/1.json
  def destroy
    @watcher = Watcher.find(params[:id])
    @watcher.destroy

    respond_to do |format|
      format.html { redirect_to watchers_url }
      format.json { head :no_content }
    end
  end
end

class AlarmNotificationsController < ApplicationController
  # GET /alarm_notifications
  # GET /alarm_notifications.json

  
   protect_from_forgery :except => [:create]
  
    def create
      AlarmNotification.create!(:params => params, :alarm_level => params[:a_l], :alert_owner => params[:a_o], :message_part1=> params[:m1], :message_part2 => params[:m2], :tank_name => params[:t_n]
      )
     render :nothing => true
    end
    
    
    
  def index
    @alarm_notifications = AlarmNotification.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alarm_notifications }
    end
  end

  # GET /alarm_notifications/1
  # GET /alarm_notifications/1.json
  def show
    @alarm_notification = AlarmNotification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alarm_notification }
    end
  end

  # GET /alarm_notifications/new
  # GET /alarm_notifications/new.json
  def new
    @alarm_notification = AlarmNotification.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alarm_notification }
    end
  end

  # GET /alarm_notifications/1/edit
  def edit
    @alarm_notification = AlarmNotification.find(params[:id])
  end

  # POST /alarm_notifications
  # POST /alarm_notifications.json
  def create_old
    @alarm_notification = AlarmNotification.new(params[:alarm_notification])

    respond_to do |format|
      if @alarm_notification.save
        format.html { redirect_to @alarm_notification, notice: 'Alarm notification was successfully created.' }
        format.json { render json: @alarm_notification, status: :created, location: @alarm_notification }
      else
        format.html { render action: "new" }
        format.json { render json: @alarm_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /alarm_notifications/1
  # PUT /alarm_notifications/1.json
  def update
    @alarm_notification = AlarmNotification.find(params[:id])

    respond_to do |format|
      if @alarm_notification.update_attributes(params[:alarm_notification])
        format.html { redirect_to @alarm_notification, notice: 'Alarm notification was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @alarm_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alarm_notifications/1
  # DELETE /alarm_notifications/1.json
  def destroy
    @alarm_notification = AlarmNotification.find(params[:id])
    @alarm_notification.destroy

    respond_to do |format|
      format.html { redirect_to alarm_notifications_url }
      format.json { head :no_content }
    end
  end
end

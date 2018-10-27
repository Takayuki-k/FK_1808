class SchedulesController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
  end
  def create
    date = DateTime.new(Integer(params[:date][:year]), Integer(params[:date][:month]), Integer(params[:date][:day]))
    @schedule = current_user.schedules.find_by(start: date)
    @schedule = current_user.schedules.build(start: date, title: "予定なし", prefecture: params[:prefecture]) unless @schedule
    if @schedule.save
      render json: @schedule.to_json(only: [:title, :start])
    else
      
    end
  end

  def events
    @schedules = current_user.schedules
    respond_to do |format|
      format.json {
        render json: 
        @schedules.to_json(only: [:title, :start])
      }
    end
  end
  
  private
  def schedule_params
    params.require(:date).permit(:year, :month, :day)
  end
end

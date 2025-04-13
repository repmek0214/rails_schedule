class SchedulesController < ApplicationController
  before_action :set_schedule, only: %i[show edit update destroy]

  def index
    @schedules = Schedule.all
  end

  def show
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to :schedules
    else
      render :new
    end
  end

  def update
    if @schedule.update(schedule_params)
      redirect_to :schedules
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @schedule.destroy
    redirect_to :schedules
  end

  private

  def set_schedule
    @schedule = Schedule.find(params[:id])
  end

  def schedule_params
    params.require(:schedule).permit(:title, :start_date, :end_date, :all_day, :memo)
  end
end

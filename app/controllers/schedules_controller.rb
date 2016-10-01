class SchedulesController < ApplicationController
  def index
    @schedule = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    # binding.pry
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to schedules_path
    else
      redirect_to new_schedule_path
    end
  end

  private

    def schedule_params
      params.require(:schedule).permit(:classroom_id, :teacher_id, :date, :start, :end)
    end
end

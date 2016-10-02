class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]
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
      flash[:success] = 'You have created schedule successfully'
      redirect_to schedules_path
    else
      flash[:danger] = 'Failed'
      redirect_to new_schedule_path
    end
  end

  def edit

  end

  def update
    if @schedule.update(schedule_params)
      redirect_to schedules_path
    else
      redirect_to edit_schedule_path
    end
  end

  def show

  end

  def destroy
    @schedule.destroy
    respond_to do |format|
      format.html {redirect_to schedules_path}
    end
  end
  private
    def set_schedule
      @schedule = Schedule.find_by(id: params[:id])
    end
    def schedule_params
      params.require(:schedule).permit(:classroom_id, :teacher_id, :date, :start, :end)
    end
end

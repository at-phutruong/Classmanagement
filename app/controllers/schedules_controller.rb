class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]
  # before_action :admin_user,    only: [:show, :edit, :update, :destroy, :new, :create]
  # before_action :lecturer_user, only: [:show, :new, :create]
  # before_action :student_user,  only: :show

  def index
    @schedules = Schedule.paginate(page: params[:page])
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
      flash[:success] = 'You have edited schedule successfully'
      redirect_to schedules_path
    else
      render 'edit'
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

    def admin_user
      redirect_to(root_url) unless current_user.role == 'admin'
    end
    def lecturer_user
      redirect_to(root_url) unless current_user.role == 'lecturer'
    end
    def student_user
      redirect_to(root_url) unless current_user.role == 'student'
    end

    def set_schedule
      @schedule = Schedule.find_by(id: params[:id])
    end
    def schedule_params
      params.require(:schedule).permit(:classroom_id, :teacher_id, :date, :start, :end)
    end
end

class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @user = Schedule.new(params.require(:schedule).permit(:title, :start, :end, :all_day, :memo))
     if @user.save
      flash[:notice] = "スケジュールを新規登録しました"
      redirect_to :schedules
     else
      render "new"
     end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

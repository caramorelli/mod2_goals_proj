class AchievementsController < ApplicationController

  def index
    @achievements = Achievement.all

  end

  def new
    @achievement = Achievement.new
  end

  def create
    byebug
    @achievement = Achievement.create( { completed: true, goal_id: params[:id] } )

    redirect_to new_event_path(@achievement)
    # new_event_path(@achievement)
    # @achievement = Achievement.create(params.require(:achievement).permit(:completed, :goal_id))
  end

end

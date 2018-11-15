class AchievementsController < ApplicationController

  def new
    @achievement = Achievement.new
  end

  def create
    byebug
    @achievement = Achievement.create(params.require(:achievement).permit(:completed, :goal_id))
  end

  def show
  end

end

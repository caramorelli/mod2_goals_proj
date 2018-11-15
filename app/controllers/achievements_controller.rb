class AchievementsController < ApplicationController

  def index
    @achievements = Achievement.all

  end

  def new
    @achievement = Achievement.new
  end

  def create
    @achievement = Achievement.create(params.require(:achievement).permit(:completed, :goal_id))
  end

  def show
  end

end

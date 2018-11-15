class AchievementsController < ApplicationController

  def index
    @achievements = Achievement.all

  end

  def new
    @achievement = Achievement.new
  end

  def create
    @achievement = Achievement.create(params.require(:achievement).permit(:completed, :goal_id))

    # @event = Event.new
    redirect_to new_event_path
  end

  def show
  end

end

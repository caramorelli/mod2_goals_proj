class AchievementsController < ApplicationController

  def index
    @achievements = Achievement.all

  end

  def new
    @achievement = Achievement.new
    @event = Event.new
  end

  def create
    @achievement = Achievement.create(params.require(:achievement).permit(:completed, :goal_id))

    # @event = Event.create( { name: @achievement.goal.name, start_time: @achievement.created_at } )

    redirect_to create_event_path(@achievement.id)
  end

  def show
  end

end

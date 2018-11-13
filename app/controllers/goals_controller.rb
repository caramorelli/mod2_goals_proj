

class GoalsController < ApplicationController

  before_action :find_goal, only: [:show, :edit, :update, :destroy]

  def index
    # @current_user = User.find(id = 3)   #CHANGE THIS LATER
    # @first_goal = @current_user.goals[0]
    # @second_goal = @current_user.goals[1]
    # @third_goal = @current_user.goals[2]
    # @achievement = Achievement.new
    @goals = Goal.all
  end

  def show
    if @goal.achievements.size > 0
      @notes = @goal.notes
    end
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.create(goal_params)
      if @goal.valid?
        redirect_to @goal
      else
        flash[:errors] = @goal.errors.full_messages
        redirect_to new_goal_path
      end
  end

  def edit
  end

  def update
    @goal.update(goal_params)
      if @goal.valid?
        redirect_to @goal
      else
        flash[:errors] = @goal.errors.full_messages
        redirect_to edit_goal_path
      end
  end

  private

  def find_goal
    @goal = Goal.find_by(id: params[:id])
  end

  def goal_params
    params.require(:goal).require(:name, :weekly_occurance, :user_id)
  end


end



class GoalsController < ApplicationController

  before_action :find_goal, only: [:show, :edit, :update, :destroy]
  before_action :current_user, only: [:index]

  def index
    # goals_list = [@first_goal, @second_goal, @third_goal]
    # 0.upto(@current_user.goals.length - 1) do |int|
    #   goals_list[int] = @current_user.goals[int]
    # end
    @first_goal = @current_user.goals[0]
    @second_goal = @current_user.goals[1]
    @third_goal = @current_user.goals[2]
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

  def destroy
    redirect_to destroy_users_path
  end

  private

  def find_goal
    @goal = Goal.find_by(id: params[:id])
  end

  def goal_params
    params.require(:goal).require(:name, :weekly_occurance, :user_id)
  end


end

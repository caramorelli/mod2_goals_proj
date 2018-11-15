

class GoalsController < ApplicationController
  before_action :find_goal, only: [:show, :edit, :update, :destroy]
  before_action :current_user, only: [:index, :new, :create]

  def index

    if @current_user.goals.length >= 3
      @first_goal = @current_user.goals[0]
      @second_goal = @current_user.goals[1]
      @third_goal = @current_user.goals[2]
    else
      redirect_to new_goal_path
    end
  end

  def show

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
    @goal.destroy
    redirect_to goals_path
  end

  private

  def find_goal
    @goal = Goal.find_by(id: params[:id])
  end

  def goal_params
    params.require(:goal).permit(:name, :weekly_occurance, :user_id, :goal_counter)
  end


end

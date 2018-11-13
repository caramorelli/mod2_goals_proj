class GoalsController < ApplicationController

  def show
    @notes = Note.all
  end

end

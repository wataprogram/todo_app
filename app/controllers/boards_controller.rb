class BoardsController < ApplicationController
  def index

  end

  def show

  end

  private
  def boards_params
    params.require(:boards).permit(:name, :description, :user_id)
  end
end

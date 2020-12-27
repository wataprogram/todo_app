class BoardsController < ApplicationController
  def index

  end

  def new
    @board = Board.new
  end

  def create
    board = Board.new(boards_params)
    if board.save
      redirect_to boards_path, notice: "boardの作成が完了しました。"
    else
      flash[:alert] = "作成に失敗しました。"
      render "boards/new"
    end
  end

  def show

  end

  private
  def boards_params
    params.require(:board).permit(:name, :description).merge(user_id: current_user.id)
  end
end

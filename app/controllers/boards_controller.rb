class BoardsController < ApplicationController
  before_action :authenticate_user!
  def index
    @boards = Board.all
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

  def edit
    @board = Board.find(params[:id])
  end

  def destroy
    board = Board.find(params[:id])
    board.destroy
    redirect_to boards_path
  end

  def update
    board = Board.find(params[:id])
    if board.update(boards_params)
      redirect_to boards_path, notice: "boardの更新が完了しました"
    else
      flash[:alert] = "更新に失敗しました。"
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

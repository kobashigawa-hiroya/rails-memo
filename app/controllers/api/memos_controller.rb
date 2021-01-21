class Api::MemosController < ApplicationController
  def index
    @memos = Memo.order('created_at DESC')
    #orderでデータを並び替え
  end

  def create 
    @memo = Memo.new(memo_params)
    if @memo.save 
      #保存が上手くいった場合の処理
      render :show, status: :create
    else
      #保存が失敗した場合の処理

      render json: @memo.errors, status: :unprocessable_entity
    end
  end

  private 
  def memo_params
    params.permit(:title, :description)
  end
end

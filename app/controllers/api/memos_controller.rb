class Api::MemosController < ApplicationController
  def index
    @memos = Memo.order('created_at DESC')
    #orderでデータを並び替え
  end
end

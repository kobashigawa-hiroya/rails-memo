Rails.application.routes.draw do
  get 'homes',to: 'homes#index'

  namespace :api, format: 'json' do
    resources :memos, only: [:index, :create]
  #namespace を使っている背景としては、URLやファイル構成を指定のパスにしたいため
  end
end

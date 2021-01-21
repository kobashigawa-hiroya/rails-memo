Rails.application.routes.draw do
  get 'home',to: 'home#index'

  namespace :api, format: 'json' do
    resources :memos, only: [:index]
  #namespace を使っている背景としては、URLやファイル構成を指定のパスにしたいため
  end
end

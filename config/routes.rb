Rails.application.routes.draw do
  # 他のルーティング設定

  resources :members do
    collection do
      get 'search'
      delete 'delete_selected'
    end
  end

  # 他のルーティング設定
end

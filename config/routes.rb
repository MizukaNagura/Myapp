Rails.application.routes.draw do
  resources :members, only: [:index]
  # 他のルーティング設定
end

# config/routes.rb

Rails.application.routes.draw do
  resources :members do
    collection do
      delete 'delete_selected'
    end
  end
end

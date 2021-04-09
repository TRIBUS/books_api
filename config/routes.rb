Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books do
    collection do
      post 'export' => 'books#export'
    end
  end
end

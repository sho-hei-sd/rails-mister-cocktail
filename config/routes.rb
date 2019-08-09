Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   resources :cocktails, only: [:index, :show, :new, :create] do
#     resources :doses, only: [:new, :create, :destroy]
#   end
# end
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
    # resources :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]
end

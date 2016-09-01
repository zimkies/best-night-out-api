Rails.application.routes.draw do
  scope :api do
    resources :challenges do
      collection do
        get :random
      end
    end
    resources :responses
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end

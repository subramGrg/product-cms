Rails.application.routes.draw do
    namespace :api do
        namespace :v1 do
            resources :orders, only: %i[index]
            resources :products, only: %i[update]
        end
    end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

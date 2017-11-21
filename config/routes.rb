Rails.application.routes.draw do

    resources :entries

    get 'entries/:id(.:format)' => 'entries#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :payments do
    collection do
      post :receive_webhook
      post :charge_vtdirect
    end
  end
  #get 'home/home'

  get 'home/web_payment'
  #get 'payments/web_payment'
  root 'home#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

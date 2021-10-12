Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #

  get "/sync", to: "home#do_sync", as: :sync
  get "/async", to: "home#do_async", as: :async
  root "home#index"
end

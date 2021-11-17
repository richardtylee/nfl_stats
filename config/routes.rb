Rails.application.routes.draw do
  resources :players, only: [:index]
  get '/', to: redirect('/players')
end

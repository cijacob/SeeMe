Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "homepage#index"
  get '/:locale' => 'homepage#index'

  scope "(:locale)", locale: /fr|en|nl|ar/ do
    get 'about' => "homepage#about"
    resources :homepage , only: [:index, :about]
  end
end
  
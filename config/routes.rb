Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'students/index'
  get 'students/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  get '/:locale' => 'homepage#index'

  scope "(:locale)", locale: /fr|en|nl|ar/ do
    root "homepage#index"
    get 'about' => "homepage#about"
    get 'history' => "homepage#history"
    get 'francois_house' => "homepage#francois_house"
    get 'perspectives' => "homepage#perspectives"
    get 'private_life' => "homepage#private_life"
    get 'press' => "homepage#press"
    get 'contact' => "homepage#contact"
    get 'support' => "homepage#support"
    resources :homepage , only: [:index, :about, :history, :house, :perspectives]
    resources :projects
    resources :students
    resources :volunteers
  end
end
  
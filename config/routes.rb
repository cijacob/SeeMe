Rails.application.routes.draw do
  get 'students/index'
  get 'students/new'
  get 'students/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  get '/:locale' => 'homepage#index'

  scope "(:locale)", locale: /fr|en|nl|ar/ do
    root "homepage#index"
    get 'about' => "homepage#about"
    get 'private_life' => "homepage#private_life"
    get 'press' => "homepage#press"
    resources :homepage , only: [:index, :about]
    resources :trainees
    resources :projects
    resources :students
  end
end
  
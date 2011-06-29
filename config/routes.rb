RailsSample::Application.routes.draw do
  resources :articles, :only => [:index, :show, :new, :create]
  root :to => "articles#index"
end

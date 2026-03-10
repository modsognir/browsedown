Browsedown::Engine.routes.draw do
  root to: "pages#index"
  get "/*path", to: "pages#show", as: :page
end

Rails.application.routes.draw do
  mount Browsedown::Engine["docs"] => "/docs"
end

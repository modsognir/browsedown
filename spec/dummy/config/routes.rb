Rails.application.routes.draw do
  mount Browsedown["docs"] => "/docs"
end

Rails.application.routes.draw do
  
  resources :suggestions
  
  root 'suggestions#new'
  
end

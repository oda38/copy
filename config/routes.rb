Rails.application.routes.draw do
  devise_for :admin,skip: [:passwords, :registrations], controllers: {
    sessions: 'admin/sessions'
  }
  
  
  
  devise_for :user,skip: [:passwords], controllers: {
    registrations: "user/registrations",
    sessions: 'user/sessions'
  }
  
  
  root to: 'user/homes#top'
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

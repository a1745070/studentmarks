Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'assignment#admin'
  # add routes later to the html.erb
  get '/assignment/admin' => 'assignment#admin'
  resources :student_mark
  resources :assignment
  resources :course
  resources :user

end

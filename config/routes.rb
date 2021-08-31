Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'assignment#admin'
  get '/assignment/student', to: "assignment#student"
  get '/assignment/feedback', to: "assignment#feedback"
  get '/assignment/admin' => 'assignment#admin'
  patch '/assignment/update' => 'assignment#update'
  get '/user/export_csv' => 'user#export_csv'
  post '/assignment/admin/(:id)' => 'assignment#admin'
  get '/assignment/admin/(:id)' => 'assignment#admin'
  resources :student_mark
  resources :assignment
  resources :course
  resources :user

end

Rails.application.routes.draw do
  get 'calendar/calendar'
  get 'lectures/lectures'
  get 'discussion/discussion'
  get 'exams/exams'
  get 'assignments/assignments'
  get 'modules/modules'
  get 'annoucement/hello'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'assignment#admin'
  get '/assignment/student', to: "assignment#student"
  get '/assignment/feedback', to: "assignment#feedback"
  # add routes later to the html.erb
  get '/assignment/admin' => 'assignment#admin'
  patch '/assignment/update' => 'assignment#update'
  resources :student_mark
  resources :assignment
  resources :course
  resources :user

end

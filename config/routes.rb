Rails.application.routes.draw do
	root to: 'students#index'
  resources :students, only: [:index, :show]

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  # with get method below for some reason it is not create the student_path
  # get "students/:id", to: "student#show"
  get 'students/:id/activate', to: 'students#activate', as: 'activate_student'
  get 'students/:id/deactivate', to: 'students#deactivate', as: 'deactivate_student'

end

Rails.application.routes.draw do
  get 'books/new'
  get 'books/list'
  get 'books/show'
  get 'books/edit'
  get 'books/delete'
  get 'books/update'  # is it nesserary ?
  get 'books/show_subjects'

  post 'books/create' # only 1 post
  patch 'books/update' # only 1 update
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

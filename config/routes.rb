Rails.application.routes.draw do

#READ DIRECTORS
get('/directors', { :controller => 'directors', :action => 'index' })
get('/directors/:id', { :controller => 'directors', :action => 'show_details' })

#DELETE
get("/delete_directors/:id", { :controller => 'directors', :action => "destroy" })

  # CREATE
  get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
  get('/create_row', { :controller => 'directors', :action => 'create_row' })



end

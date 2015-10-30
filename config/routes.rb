Rails.application.routes.draw do


  # CREATE
  get('/create_row', { :controller => 'directors', :action => 'create_row' })
 get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })



#READ DIRECTORS
get('/directors', { :controller => 'directors', :action => 'index' })
get('/directors/:id', { :controller => 'directors', :action => 'show_details' })

#DELETE
get("/delete_directors/:id", { :controller => 'directors', :action => "destroy" })

#EDIT
 get('/directors/:id/edit', { :controller => 'directors', :action => 'edit_form' })
  get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

end

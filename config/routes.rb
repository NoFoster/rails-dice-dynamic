Rails.application.routes.draw do


  get ("/dice/:number_of_dice/:sides", { :controller => "dice", :action => "rolls"})

  get("/", { :controller => "dice", :action => "homepage"})
end

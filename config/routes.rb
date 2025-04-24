Rails.application.routes.draw do


  get("/dice/:rolls/:sides", { :controller => "dice", :action => "rolls"})

  get("/", { :controller => "dice", :action => "homepage"})
end

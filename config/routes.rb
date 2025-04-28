Rails.application.routes.draw do


  get("/dice/:dice/:sides", { :controller => "dice", :action => "flexible"})

  get("/", { :controller => "dice", :action => "homepage"})
end

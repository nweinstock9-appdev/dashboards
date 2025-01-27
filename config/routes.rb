Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get("/forex", { :controller => "currencies", :action => "first_currency" })
  get("/forex/:from_dashboard", { :controller => "currencies", :action => "second_currency" })
  get("/forex/:from_dashboard/:to_conversion_rate", { :controller => "currencies", :action => "conversion_calculator" })
end

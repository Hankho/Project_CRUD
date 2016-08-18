Rails.application.routes.draw do
	
	match ':controller(/:action(/:id(.:format)))', :via => :all
end

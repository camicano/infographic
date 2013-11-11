Infographic::Application.routes.draw do
	root 'welcome#index'

	get '/years', :to => 'years#index'
	get '/years/:year/show', :to => 'years#show'
	get '/years/all', :to => 'years#all'

	# mount JasmineRails::Engine => "/specs" if defined?(JasmineRails)
end

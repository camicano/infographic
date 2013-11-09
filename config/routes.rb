Infographic::Application.routes.draw do
	root 'years#index'

	# mount JasmineRails::Engine => "/specs" if defined?(JasmineRails)
end

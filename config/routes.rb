BogApp::Application.routes.draw do
    root to: 'bogs#index'

    get '/bogs', to: 'bogs#index'

    get 'bogs/new', to: 'bogs#new'

      ## My new show method
    get '/bogs/:id', to: 'bogs#show'

    # The Edit path
    get '/bogs/:id/edit', to: 'bogs#edit'

    # handle the submitted form
    post '/bogs', to: 'bogs#create'

    # Route the incoming update using the id
    put '/bogs/:id', to: 'bogs#update'

    get '/bogs/:id/delete', to: 'bogs#delete'

    delete "/bogs/:id", to: "bogs#destroy"

end
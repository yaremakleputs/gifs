# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/', to: 'home#index'
get '/search', to: 'search#index'
resources :gifs do
  collection do
    # Generates /gifs/search, maps to Books::Search, named :search_books
    get 'search'
  end
end

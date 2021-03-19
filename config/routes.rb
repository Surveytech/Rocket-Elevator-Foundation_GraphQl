Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphiql", to: "graphiql#execute"
  get "/graphiql", to: "graphiql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

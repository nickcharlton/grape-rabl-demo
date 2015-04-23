module Demo
  class API < Grape::API
    format :json

    resource :users do
      get do
        { users: { id: 1 } }
      end
    end
  end
end

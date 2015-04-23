module Demo
  class API < Grape::API
    format :json
    formatter :json, Grape::Formatter::Rabl

    mount Users
  end
end

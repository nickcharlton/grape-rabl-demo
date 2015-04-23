require 'rails_helper'

RSpec.describe Demo::Users, type: :request do
  let(:json) { JSON.parse(response.body) }

  it 'can get a list of users' do
    create(:user)

    get '/users'

    expect(response).to have_http_status(200)
    expect(json).to have_key 'users'
  end

  it 'can get a specific user' do
    user = create(:user)

    get "/users/#{user.id}"

    expect(response).to have_http_status(200)
    expect(json['id']).to eq user.id
  end
end

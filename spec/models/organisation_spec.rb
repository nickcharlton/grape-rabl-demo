require 'rails_helper'

RSpec.describe Organisation, type: :model do
  it 'has a valid factory' do
    expect(create(:organisation)).to be_valid
  end

  it 'is invalid without a name' do
    expect(build(:organisation, name: nil)).to be_invalid
  end

  it 'can have many users' do
    organisation = create(:organisation)
    user = organisation.users.create(attributes_for(:user))

    expect(organisation.users).to eq([user])
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(create(:user)).to be_valid
  end

  it 'is invalid without a name' do
    expect(build(:user, name: nil)).to be_invalid
  end

  it 'has an associated organisation' do
    user = create(:user)

    expect(user.organisation).not_to be_nil
  end
end

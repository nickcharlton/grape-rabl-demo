FactoryGirl.define do
  factory :user do
    name 'Demo User'

    association :organisation
  end
end

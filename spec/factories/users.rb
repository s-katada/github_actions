FactoryBot.define do
  factory :user do
    name { 'test' }
    sequence(:age) { |n| 20 + n }
  end
end

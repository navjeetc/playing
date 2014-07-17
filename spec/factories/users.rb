FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    username Faker::Name.first_name
    password	"secret1234"
  end
 
 
end
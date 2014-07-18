FactoryGirl.define do
  factory :commitment do
    duration "3"
    start_at Date.today
    association :user, :factory => :user
  end
 
end
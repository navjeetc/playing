FactoryGirl.define do
  factory :commitment do
    duration "3"
    start_at Time.now
    association :user, :factory => :user
  end
 
end
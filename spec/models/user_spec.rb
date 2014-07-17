require 'rails_helper'

RSpec.describe User, :type => :model do
   context "when getting all users" do
	  before :each do
	  	create(:user)
	  	create(:user, :email => Faker::Internet.email,
    		:username => Faker::Name.first_name)
	  end

	  it "should get a non empty list of users" do
	  	expect(User.all).not_to be_empty
	  end 

	  it "should get a list of users with one item" do
	  	expect(User.all.size).to eq(2)
	  end
	end
end

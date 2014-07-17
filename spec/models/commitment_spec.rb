require 'rails_helper'

RSpec.describe Commitment, :type => :model do
	before :example, :has => :one_item do
		create(:commitment)
	end

	before :example, :has => :two_items do
		create(:commitment)
		john = create(:user, :username => Faker::Name.first_name,
			:email => Faker::Internet.email)
		create(:commitment, :user => john)
	end
  context "when there is no commitment" do
	  it "should get a list of commitments with one item" do
	  	expect(Commitment.all.size).to eq(0)
	  end
	end

	context "when there is one commitment" do
	  it "should get a list of commitments with one item", :has => :one_item do
	  	expect(Commitment.all.size).to eq(1)
	  end
	end

	context "when there is two commitments for today" do
	  it "should get a list of commitments with two item", :has => :two_items do
	  	expect(Commitment.all.size).to eq(2)
	  end
	end
end

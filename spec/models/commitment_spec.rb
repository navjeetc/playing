require 'rails_helper'

RSpec.describe Commitment, :type => :model do
	before :example, :has => :one_item do
		create(:commitment)
	end

	before :example, :has => :three_items do
		create(:commitment)
		john = create(:user, :username => Faker::Name.first_name,
			:email => Faker::Internet.email)
		create(:commitment, :user => john)
		karl = create(:user, :username => Faker::Name.first_name,
			:email => Faker::Internet.email)
		create(:commitment, :user => karl, :start_at => Date.today + 1.day)
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

	context "when there are 3 commitments with two commitments for today" do
	  it "should get a list of commitments with two item", :has => :three_items do
	  	expect(Commitment.for_today.size).to eq(2)
	  end
	  it "should get a list of commitments with two items", :has => :three_items do
	  	expect(Commitment.for_date("today").size).to eq(2)
	  end
	end

	context "when there are 3 commitments with one commitment for tomorrow" do
	  it "should get a list of commitments with one item", :has => :three_items do
	  	expect(Commitment.for_tomorrow.size).to eq(1)
	  end

	  it "should get a list of commitments with one item", :has => :three_items do
	  	expect(Commitment.for_date("tomorrow").size).to eq(1)
	  end
	end
end

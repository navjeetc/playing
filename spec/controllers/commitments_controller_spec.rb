require 'rails_helper'

RSpec.describe CommitmentsController, :type => :controller do
	
	before :example do
		create(:commitment)
		john = create(:user, :username => Faker::Name.first_name,
			:email => Faker::Internet.email)
		create(:commitment, :user => john)
		karl = create(:user, :username => Faker::Name.first_name,
			:email => Faker::Internet.email)
		create(:commitment, :user => karl, :start_at => Date.today + 1.day)
	end

  it "should get index" do
    commitment = double("Commitment")
    get :index
    expect(response).to be_success
    expect(response).to render_template("index")
    expect(assigns(:commitments)).to be_present
  end

  it "should get all commitments" do
    get :index
    expect(assigns(:commitments).size).to eq(3)
  end
end

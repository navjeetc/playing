require 'rails_helper'

RSpec.describe CommitmentsController, :type => :controller do
  it "should get index" do
    commitment = double("Commitment")
    allow(Commitment).to receive(:all).and_return [commitment]
    get :index
    expect(response).to be_success
    expect(response).to render_template("index")
    expect(assigns(:commitments)).to be_present
  end
end

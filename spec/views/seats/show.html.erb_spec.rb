require 'spec_helper'

describe "seats/show" do
  before(:each) do
    @seat = assign(:seat, stub_model(Seat,
      :location => "Location",
      :theater_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Location/)
    rendered.should match(/1/)
  end
end

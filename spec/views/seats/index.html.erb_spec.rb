require 'spec_helper'

describe "seats/index" do
  before(:each) do
    assign(:seats, [
      stub_model(Seat,
        :location => "Location",
        :theater_id => 1
      ),
      stub_model(Seat,
        :location => "Location",
        :theater_id => 1
      )
    ])
  end

  it "renders a list of seats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

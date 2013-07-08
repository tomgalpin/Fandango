require 'spec_helper'

describe "showings/index" do
  before(:each) do
    assign(:showings, [
      stub_model(Showing,
        :price => 1.5,
        :time => "Time",
        :theater_id => 1
      ),
      stub_model(Showing,
        :price => 1.5,
        :time => "Time",
        :theater_id => 1
      )
    ])
  end

  it "renders a list of showings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

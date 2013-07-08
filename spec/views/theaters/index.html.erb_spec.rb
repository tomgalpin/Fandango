require 'spec_helper'

describe "theaters/index" do
  before(:each) do
    assign(:theaters, [
      stub_model(Theater,
        :name => "Name"
      ),
      stub_model(Theater,
        :name => "Name"
      )
    ])
  end

  it "renders a list of theaters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

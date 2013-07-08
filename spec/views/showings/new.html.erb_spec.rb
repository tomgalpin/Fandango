require 'spec_helper'

describe "showings/new" do
  before(:each) do
    assign(:showing, stub_model(Showing,
      :price => 1.5,
      :time => "MyString",
      :theater_id => 1
    ).as_new_record)
  end

  it "renders new showing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", showings_path, "post" do
      assert_select "input#showing_price[name=?]", "showing[price]"
      assert_select "input#showing_time[name=?]", "showing[time]"
      assert_select "input#showing_theater_id[name=?]", "showing[theater_id]"
    end
  end
end

require 'spec_helper'

describe "seats/new" do
  before(:each) do
    assign(:seat, stub_model(Seat,
      :location => "MyString",
      :theater_id => 1
    ).as_new_record)
  end

  it "renders new seat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", seats_path, "post" do
      assert_select "input#seat_location[name=?]", "seat[location]"
      assert_select "input#seat_theater_id[name=?]", "seat[theater_id]"
    end
  end
end

require 'spec_helper'

describe "seats/edit" do
  before(:each) do
    @seat = assign(:seat, stub_model(Seat,
      :location => "MyString",
      :theater_id => 1
    ))
  end

  it "renders the edit seat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", seat_path(@seat), "post" do
      assert_select "input#seat_location[name=?]", "seat[location]"
      assert_select "input#seat_theater_id[name=?]", "seat[theater_id]"
    end
  end
end

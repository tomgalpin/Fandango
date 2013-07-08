require 'spec_helper'

describe "theaters/edit" do
  before(:each) do
    @theater = assign(:theater, stub_model(Theater,
      :name => "MyString"
    ))
  end

  it "renders the edit theater form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", theater_path(@theater), "post" do
      assert_select "input#theater_name[name=?]", "theater[name]"
    end
  end
end

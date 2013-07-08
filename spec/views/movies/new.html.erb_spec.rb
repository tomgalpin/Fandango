require 'spec_helper'

describe "movies/new" do
  before(:each) do
    assign(:movie, stub_model(Movie,
      :title => "MyString",
      :theater_id => 1
    ).as_new_record)
  end

  it "renders new movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movies_path, "post" do
      assert_select "input#movie_title[name=?]", "movie[title]"
      assert_select "input#movie_theater_id[name=?]", "movie[theater_id]"
    end
  end
end

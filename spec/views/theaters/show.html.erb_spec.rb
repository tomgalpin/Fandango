require 'spec_helper'

describe "theaters/show" do
  before(:each) do
    @theater = assign(:theater, stub_model(Theater,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end

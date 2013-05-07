require 'spec_helper'

describe "statics/show" do
  before(:each) do
    @static = assign(:static, stub_model(Static))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end

require 'spec_helper'

describe "statics/index" do
  before(:each) do
    assign(:statics, [
      stub_model(Static),
      stub_model(Static)
    ])
  end

  it "renders a list of statics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end

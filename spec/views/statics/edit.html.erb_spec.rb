require 'spec_helper'

describe "statics/edit" do
  before(:each) do
    @static = assign(:static, stub_model(Static))
  end

  it "renders the edit static form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", static_path(@static), "post" do
    end
  end
end

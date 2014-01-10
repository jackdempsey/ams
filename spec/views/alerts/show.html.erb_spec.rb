require 'spec_helper'

describe "alerts/show" do
  before(:each) do
    @alert = assign(:alert, stub_model(Alert,
      :name => "Name",
      :subject => "Subject",
      :body => "MyText",
      :enabled => false,
      :alert_type => "Alert Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Subject/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/Alert Type/)
  end
end

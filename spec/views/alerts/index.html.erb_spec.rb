require 'spec_helper'

describe "alerts/index" do
  before(:each) do
    assign(:alerts, [
      stub_model(Alert,
        :name => "Name",
        :subject => "Subject",
        :body => "MyText",
        :enabled => false,
        :alert_type => "Alert Type"
      ),
      stub_model(Alert,
        :name => "Name",
        :subject => "Subject",
        :body => "MyText",
        :enabled => false,
        :alert_type => "Alert Type"
      )
    ])
  end

  it "renders a list of alerts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Alert Type".to_s, :count => 2
  end
end

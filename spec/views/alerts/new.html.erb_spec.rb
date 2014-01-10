require 'spec_helper'

describe "alerts/new" do
  before(:each) do
    assign(:alert, stub_model(Alert,
      :name => "MyString",
      :subject => "MyString",
      :body => "MyText",
      :enabled => false,
      :alert_type => "MyString"
    ).as_new_record)
  end

  it "renders new alert form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", alerts_path, "post" do
      assert_select "input#alert_name[name=?]", "alert[name]"
      assert_select "input#alert_subject[name=?]", "alert[subject]"
      assert_select "textarea#alert_body[name=?]", "alert[body]"
      assert_select "input#alert_enabled[name=?]", "alert[enabled]"
      assert_select "input#alert_alert_type[name=?]", "alert[alert_type]"
    end
  end
end

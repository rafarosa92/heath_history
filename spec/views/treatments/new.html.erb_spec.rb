require 'rails_helper'

RSpec.describe "treatments/new", type: :view do
  before(:each) do
    assign(:treatment, Treatment.new(
      appointment: nil,
      user: nil,
      title: "MyString",
      description: "MyText",
      place: "MyString",
      kind: 1
    ))
  end

  it "renders new treatment form" do
    render

    assert_select "form[action=?][method=?]", treatments_path, "post" do

      assert_select "input[name=?]", "treatment[appointment_id]"

      assert_select "input[name=?]", "treatment[user_id]"

      assert_select "input[name=?]", "treatment[title]"

      assert_select "textarea[name=?]", "treatment[description]"

      assert_select "input[name=?]", "treatment[place]"

      assert_select "input[name=?]", "treatment[kind]"
    end
  end
end

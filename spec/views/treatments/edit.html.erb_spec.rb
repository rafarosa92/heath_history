require 'rails_helper'

RSpec.describe "treatments/edit", type: :view do
  before(:each) do
    @treatment = assign(:treatment, Treatment.create!(
      appointment: nil,
      user: nil,
      title: "MyString",
      description: "MyText",
      place: "MyString",
      kind: 1
    ))
  end

  it "renders the edit treatment form" do
    render

    assert_select "form[action=?][method=?]", treatment_path(@treatment), "post" do

      assert_select "input[name=?]", "treatment[appointment_id]"

      assert_select "input[name=?]", "treatment[user_id]"

      assert_select "input[name=?]", "treatment[title]"

      assert_select "textarea[name=?]", "treatment[description]"

      assert_select "input[name=?]", "treatment[place]"

      assert_select "input[name=?]", "treatment[kind]"
    end
  end
end

require 'rails_helper'

RSpec.describe "exams/new", type: :view do
  before(:each) do
    assign(:exam, Exam.new(
      user: nil,
      appointment: nil,
      name: "MyString",
      description: "MyText",
      place: "MyString"
    ))
  end

  it "renders new exam form" do
    render

    assert_select "form[action=?][method=?]", exams_path, "post" do

      assert_select "input[name=?]", "exam[user_id]"

      assert_select "input[name=?]", "exam[appointment_id]"

      assert_select "input[name=?]", "exam[name]"

      assert_select "textarea[name=?]", "exam[description]"

      assert_select "input[name=?]", "exam[place]"
    end
  end
end

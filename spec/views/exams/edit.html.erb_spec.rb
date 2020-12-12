require 'rails_helper'

RSpec.describe "exams/edit", type: :view do
  before(:each) do
    @exam = assign(:exam, Exam.create!(
      user: nil,
      appointment: nil,
      name: "MyString",
      description: "MyText",
      place: "MyString"
    ))
  end

  it "renders the edit exam form" do
    render

    assert_select "form[action=?][method=?]", exam_path(@exam), "post" do

      assert_select "input[name=?]", "exam[user_id]"

      assert_select "input[name=?]", "exam[appointment_id]"

      assert_select "input[name=?]", "exam[name]"

      assert_select "textarea[name=?]", "exam[description]"

      assert_select "input[name=?]", "exam[place]"
    end
  end
end

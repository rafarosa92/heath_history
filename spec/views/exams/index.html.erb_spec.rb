require 'rails_helper'

RSpec.describe "exams/index", type: :view do
  before(:each) do
    assign(:exams, [
      Exam.create!(
        user: nil,
        appointment: nil,
        name: "Name",
        description: "MyText",
        place: "Place"
      ),
      Exam.create!(
        user: nil,
        appointment: nil,
        name: "Name",
        description: "MyText",
        place: "Place"
      )
    ])
  end

  it "renders a list of exams" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Place".to_s, count: 2
  end
end

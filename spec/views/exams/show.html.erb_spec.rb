require 'rails_helper'

RSpec.describe "exams/show", type: :view do
  before(:each) do
    @exam = assign(:exam, Exam.create!(
      user: nil,
      appointment: nil,
      name: "Name",
      description: "MyText",
      place: "Place"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Place/)
  end
end

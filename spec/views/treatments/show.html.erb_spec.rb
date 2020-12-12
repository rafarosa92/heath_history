require 'rails_helper'

RSpec.describe "treatments/show", type: :view do
  before(:each) do
    @treatment = assign(:treatment, Treatment.create!(
      appointment: nil,
      user: nil,
      title: "Title",
      description: "MyText",
      place: "Place",
      kind: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Place/)
    expect(rendered).to match(/2/)
  end
end

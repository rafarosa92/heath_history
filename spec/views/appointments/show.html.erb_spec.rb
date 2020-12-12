require 'rails_helper'

RSpec.describe "appointments/show", type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      title: "Title",
      health_professional_user: nil,
      patient_user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

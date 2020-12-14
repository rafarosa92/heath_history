require 'rails_helper'

RSpec.describe "appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        title: "Title",
        health_professional_user: nil,
        patient_user: nil
      ),
      Appointment.create!(
        title: "Title",
        health_professional_user: nil,
        patient_user: nil
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end

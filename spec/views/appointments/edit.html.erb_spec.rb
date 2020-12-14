require 'rails_helper'

RSpec.describe "appointments/edit", type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      title: "MyString",
      health_professional_user: nil,
      patient_user: nil
    ))
  end

  it "renders the edit appointment form" do
    render

    assert_select "form[action=?][method=?]", appointment_path(@appointment), "post" do

      assert_select "input[name=?]", "appointment[title]"

      assert_select "input[name=?]", "appointment[health_professional_user_id]"

      assert_select "input[name=?]", "appointment[patient_user_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "appointments/new", type: :view do
  before(:each) do
    assign(:appointment, Appointment.new(
      title: "MyString",
      health_professional_user: nil,
      patient_user: nil
    ))
  end

  it "renders new appointment form" do
    render

    assert_select "form[action=?][method=?]", appointments_path, "post" do

      assert_select "input[name=?]", "appointment[title]"

      assert_select "input[name=?]", "appointment[health_professional_user_id]"

      assert_select "input[name=?]", "appointment[patient_user_id]"
    end
  end
end

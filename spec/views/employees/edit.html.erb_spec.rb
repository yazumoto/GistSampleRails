require 'rails_helper'

RSpec.describe "employees/edit", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :name => "MyString",
      :group => nil
    ))
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(@employee), "post" do

      assert_select "input#employee_name[name=?]", "employee[name]"

      assert_select "input#employee_group_id[name=?]", "employee[group_id]"
    end
  end
end

require "test_helper"

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
     # get new_user_session_path
     get '/users/sign_in'
     sign_in users(:one)
     post user_session_path

    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  # test "should get new" do
  #   get new_employee_url
  #   assert_response :success
  # end

  test "should create employee" do

    assert_difference("Employee.count") do
      post employees_url, params: { employee: { email: 'new_test@mail.com', employment_status: @employee.employment_status, job: @employee.job, name: @employee.name, salary: @employee.salary} }
    end
   
      assert_redirected_to employee_url(Employee.last)
      assert_equal "Employee was successfully created.", flash[:notice]
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { email: @employee.email, employment_status: @employee.employment_status, job: @employee.job, name: @employee.name, salary: @employee.salary } }
    assert_redirected_to employee_url(@employee)
    assert_equal "Employee was successfully updated.", flash[:notice]
  end

  test "should destroy employee" do
    assert_difference("Employee.count", -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end

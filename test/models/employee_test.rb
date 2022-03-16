require "test_helper"

class EmployeeTest < ActiveSupport::TestCase

  fixtures :employees
  
  test 'should save employee' do

    new_employee = Employee.new
    new_employee.name = employees(:one).name
    new_employee.email = "test_unique@mail.com"
    new_employee.job = employees(:one).job
    new_employee.salary = employees(:one).salary
    new_employee.employment_status = employees(:one).employment_status
    new_employee.team_id = employees(:one).team
  
    assert new_employee.save
    
  end

  test 'shouldn\'t save employee without email' do

    new_employee = Employee.new
    new_employee.name = employees(:one).name
    # new_employee.email = "test_unique@mail.com"
    new_employee.job = employees(:one).job
    new_employee.salary = employees(:one).salary
    new_employee.employment_status = employees(:one).employment_status
    new_employee.team_id = employees(:one).team
  
    assert_not new_employee.save
    
  end

  test 'shouldn\'t save not unique email' do

    new_employee = Employee.new
    new_employee.name = employees(:one).name
    new_employee.email = "test@mail.com"
    new_employee.job = employees(:one).job
    new_employee.salary = employees(:one).salary
    new_employee.employment_status = employees(:one).employment_status
    new_employee.team_id = employees(:one).team
  
    new_employee.save

    new_employee2 = Employee.new
    new_employee2.name = employees(:two).name
    new_employee2.email = "test@mail.com"
    new_employee2.job = employees(:two).job
    new_employee2.salary = employees(:two).salary
    new_employee2.employment_status = employees(:two).employment_status
    new_employee2.team_id = employees(:two).team
  
    assert_not new_employee2.save

    # assert new_employee2.valid?
    # assert new_employee2.errors.include?(:email)
    # assert_equal(new_employee.email , new_employee2.email)
    # assert_not new_employee2.duplicable?
    
  end


  test 'shouldn\'t save employee without name' do

    new_employee = Employee.new
    # new_employee.name = employees(:one).name
    new_employee.email = "test_unique@mail.com"
    new_employee.job = employees(:one).job
    new_employee.salary = employees(:one).salary
    new_employee.employment_status = employees(:one).employment_status
    new_employee.team_id = employees(:one).team
  
    assert_not new_employee.save
    
  end


  test 'shouldn\'t save name if contains anything except letters' do

    new_employee = Employee.new
    new_employee.name = employees(:three).name
    new_employee.email = "test_unique@mail.com"
    new_employee.job = employees(:three).job
    new_employee.salary = employees(:three).salary
    new_employee.employment_status = employees(:three).employment_status
    new_employee.team_id = employees(:three).team
  
    assert_not new_employee.save
    
  end

  
  test 'shouldn\'t save employee without job' do

    new_employee = Employee.new
    new_employee.name = employees(:one).name
    new_employee.email = "test_unique@mail.com"
    # new_employee.job = employees(:one).job
    new_employee.salary = employees(:one).salary
    new_employee.employment_status = employees(:one).employment_status
    new_employee.team_id = employees(:one).team
  
    assert_not new_employee.save
    
  end


  test 'shouldn\'t save employee without salary' do

    new_employee = Employee.new
    new_employee.name = employees(:one).name
    new_employee.email = "test_unique@mail.com"
    new_employee.job = employees(:one).job
    # new_employee.salary = employees(:one).salary
    new_employee.employment_status = employees(:one).employment_status
    new_employee.team_id = employees(:one).team
  
    assert_not new_employee.save
    
  end


  test 'shouldn\'t save salary if not numbers' do

    new_employee = Employee.new
    new_employee.name = employees(:four).name
    new_employee.email = "test_unique@mail.com"
    new_employee.job = employees(:four).job
    new_employee.salary = "MyString"
    new_employee.employment_status = employees(:four).employment_status
    new_employee.team_id = employees(:four).team
  
    assert_not new_employee.save
    
  end


  # test 'should save employee' do
  #   new_employee = Employee.new(
  #     name: employees(:one).name, 
  #     email: "test_unique@mail.com", 
  #     job: employees(:one).job,
  #     salary: employees(:one).salary,
  #     employment_status: employees(:one).employment_status, 
  #     team: employees(:one).team
  #   )  
  #   assert new_employee.save
  # end

end

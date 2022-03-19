require "test_helper"

class EmployeeTest < ActiveSupport::TestCase


  def setup 
    @employee = employees(:one)
  end
  
  test 'should save employee' do
   
    assert @employee.save
    
  end

  test 'shouldn\'t save employee without email' do

    @employee.email = nil
    assert_not @employee.save
    
  end

  test 'shouldn\'t be valid if email is not unique' do
  
    emp2 = employees(:two)
    @employee.email = emp2.email
    assert_not @employee.valid?
    
  end


  test 'shouldn\'t save employee without name' do

    @employee.name = nil
    assert_not @employee.save
    
  end


  test 'shouldn\'t be valid if name contains anything except letters' do

    @employee.name = employees(:two).name
    assert_not @employee.valid?
    
  end

  
  test 'shouldn\'t save employee without job' do

    @employee.job = nil
    assert_not @employee.save
    
  end


  test 'shouldn\'t save employee without salary' do

    @employee.salary = nil
    assert_not @employee.save
    
  end


  test 'shouldn\'t be valid if salary is not a number' do

    @employee.salary = "MyString"
    assert_not @employee.valid?
    
  end


end

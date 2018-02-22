require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @bug = bug(:one)
    @user = user(:one)
  end
  
  test "user must be valid" do
    assert @user.valid?
  end
  
  test "first name must be present" do
    @user.fname = ""
    assert_not @user.valid?
  end
  
  test "last name must be present" do
    @user.lname = ""
    assert_not @user.valid?
  end
  
  test "email must be present" do
    @user.email = ""
    assert_not @user.valid?
  end
  
  test "email must be valid" do
    @user.email = "test"
    assert_not @user.valid?
  end
  
  test "email is valid" do
    @user.email = "email@email.com"
    assert @user.valid?
  end
end

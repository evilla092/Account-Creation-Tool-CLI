require 'minitest/autorun'
require './user_account'

class TestAccount < Minitest::Test
  def test_first_name
    user_account = UserAccount.new("Eddie", "Villa", "March 28, 1995", "eddievil11", "ufcguy123", "1")
    assert user_account.first_name != String, "First Name method failed"
  end
  
  def test_last_name
    user_account = UserAccount.new("Eddie", "Villa", "March 28, 1995", "eddievil11", "ufcguy123", "1")
    assert user_account.last_name != String, "Last Name method failed"
  end
end

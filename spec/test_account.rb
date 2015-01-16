require File.expand_path("#{File.dirname(__FILE__)}/test_helper")
require 'nokogiri'

class TestGogs < MiniTest::Unit::TestCase
  def test_account_info
    user = 'morpheyesh'
    token = '4760a3130da97bf258d8be4d55ac8165ba7a3e55'
    response = multiple_entries.get_account_info(user, token)
    assert_raises(ArgumentError)
  end

end

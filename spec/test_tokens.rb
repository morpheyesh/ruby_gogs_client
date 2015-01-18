require File.expand_path("#{File.dirname(__FILE__)}/test_helper")
require 'nokogiri'

class TestGogs < MiniTest::Unit::TestCase



  def test_gettokens
    name = "morpheyesh"
    pass = "123456"
    response = multiple_entries.get_tokens(name, pass)
    assert_raises(ArgumentError)

  end



  def test_posttokens
    name = "morpheyesh"
    pass = "123456"
    test_json = "{'name':'test_key'}"
    response = multiple_entries.post_tokens(name, pass, test_json)
    assert_raises(ArgumentError)

  end

end

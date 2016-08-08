require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../models/wordformatter')

class TestWordFormatter < Minitest::Test

  def test_postcode
    assert_equal('EH22 3LN', WordFormatter.postcode('eh22 3ln'))
  end

  def test_camel_case
    assert_equal('CodeClan', WordFormatter.camel_case('code clan'))
  end
end
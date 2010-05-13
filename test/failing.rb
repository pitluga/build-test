require 'test/unit'

class FailingTest < Test::Unit::TestCase
  
  def test_failing
    assert false
  end
  
end
require 'test_helper'

class RetroactionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Retroaction.new.valid?
  end
end

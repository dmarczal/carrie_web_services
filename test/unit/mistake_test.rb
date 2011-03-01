require 'test_helper'

class MistakeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Mistake.new.valid?
  end
end

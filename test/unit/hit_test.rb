require 'test_helper'

class HitTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Hit.new.valid?
  end
end

require './lib/play'
require './test/test_helper'

class PlayTest < Minitest::Test

  def test_it_exists
    play = Play.new
    assert_instance_of Play, play
  end
end

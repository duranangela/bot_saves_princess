require 'minitest/autorun'
require 'minitest/pride'
require './save_princess_1/lib/bot'

class BotTest < Minitest::Test

  def test_it_exists
    bot = Bot.new(3, ['--p', '-m-', '---'])
    assert_instance_of Bot, bot
  end

  def test_it_can_locate_the_princess_with_3x3_grid
    bot = Bot.new(3, ['--p', '-m-', '---'])
    assert_equal [0,2], bot.find_princess
  end

  def test_it_can_locate_the_princess_with_5x5_grid
    bot = Bot.new(5, ["-----", "-----", "--m--", "-----", "p----"])
    assert_equal [4, 0], bot.find_princess
  end

end

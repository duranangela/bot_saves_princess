require 'minitest/autorun'
require 'minitest/pride'
require './save_princess_2/lib/save_princess_2'

class BotTest < Minitest::Test

  def test_it_exists
    bot = Bot.new(3, 1, 2, ['---', 'p-m', '---'])
    assert_instance_of Bot, bot
  end

  def test_it_can_locate_the_princess_with_3x3_grid
    bot = Bot.new(3, 1, 2, ['---', 'p-m', '---'])
    assert_equal [1,0], bot.find_princess
  end

  def test_it_can_locate_the_princess_with_5x5_grid
    bot = Bot.new(5, 2, 3, ["-----", "-p---", "---m-", "-----", "-----"])
    assert_equal [1, 1], bot.find_princess
  end

  def test_it_can_find_next_move_3x3_grid
    bot = Bot.new(3, 1, 2, ['---', 'p-m', '---'])
    assert_equal "LEFT", bot.next_move
  end

  def test_it_can_find_next_move_5x5_grid
    bot = Bot.new(5, 2, 3, ["-----", "-p---", "---m-", "-----", "-----"])
    assert_equal "UP", bot.next_move
  end

  def test_it_can_find_next_move_7x7_grid
    bot = Bot.new(7, 0, 0, ["m----p-", "-------", "-------", "-------", "-------", "-------", "-------"])
    assert_equal "RIGHT", bot.next_move
  end

end

require 'minitest/autorun'
require 'minitest/pride'
require './save_princess_1/lib/save_princess_1'

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

  def test_it_can_find_path_3x3_grid
    bot = Bot.new(3, ['--p', '-m-', '---'])
    assert_equal ["UP\n", "RIGHT\n"].sort, bot.displayPath.sort
  end

  def test_it_can_find_path_5x5_grid
    bot = Bot.new(5, ["-----", "-----", "--m--", "-----", "p----"])
    assert_equal ["DOWN\n", "DOWN\n", "LEFT\n", "LEFT\n"].sort, bot.displayPath.sort
  end

  def test_it_can_find_path_7x7_grid
    bot = Bot.new(7, ["p------", "-------", "-------", "---m---", "-------", "-------", "-------"])
    assert_equal ["UP\n", "UP\n", "UP\n", "LEFT\n", "LEFT\n", "LEFT\n"].sort, bot.displayPath.sort
  end

end

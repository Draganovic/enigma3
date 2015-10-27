require 'minitest/autorun'
require 'minitest/pride'
require './encrypt'

class EncryptTest < MiniTest::Test

  def test_key_and_message_inputs_work
    en = Encrypt.new(12345, "hello")

    assert_equal 12345, en.key
    assert_equal "hello", en.message
  end

  def test_does_the_date_function_work
    en = Encrypt.new(45678, "meow")

    assert_equal 261015, en.date
  end

end

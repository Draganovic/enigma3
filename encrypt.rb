require 'pry'

class Encrypt
  attr_reader :key, :message, :date

  def initialize(key, message)
    @key = key
    @message = message
    @date = Time.now.strftime('%d%m%y').to_i
  end

  def char_map
    char_map = ('a'..'z').to_a + (0..9).to_a + [' ', '.', ',']
  end

  def key_gen
    numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    numbers = numbers.shuffle
    numbers = numbers[0..4]
    @key_gen = numbers
  end

end

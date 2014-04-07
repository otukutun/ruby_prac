class Janken
  def initialize(my, your)
    @my = my
    @your = your
  end

  def next_hand
    result = judge?
    if result
      return @my
    else
      return hand
    end
  end
  private
  def judge?
    if @my == 'G' and @your == 'C'
      return true
    elsif @my == 'C' and @your == 'P'
      return true
    elsif @my == 'P' and @your == 'G'
      return true
    else
      return false
    end
  end

  def hand
    case @my
    when 'G'
      'P'
    when 'C'
      'G'
    when 'P'
      'C'
    end
  end
end

#puts ARGV[0]
a = ARGV[0]
b = a.split("")

hand = ['G']
b.each_with_index do |janken,val|
  if val == 0
    c = Janken.new('G',janken)
  else
    c = Janken.new(hand[val - 1],janken)
  end
    hand.push(c.next_hand)
end
hand.pop
hand.each { |d| print d }
puts ''

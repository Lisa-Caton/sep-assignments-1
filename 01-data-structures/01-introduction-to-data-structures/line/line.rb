# A line of people at an amusement park ride
# There is a front to the line, as well as a back.
# People may leave the line whenever they see fit and those behind them take their place.
12
class Line
  attr_accessor :members

  def initialize
    @members = []
  end

  def join(person)
    @members.push(person)
  end

  def leave(person)
    @members.delete(person)
  end

  def front
    @members.first
  end

  def middle
    midpoint = (@members.length/2).ceil
    @members[midpoint]
  end

  def back
    @members.last
  end

  def search(person)
    if index(person)
      person
    end
  end

  private

  def index(person)
    @members.find_index(person)
  end

end
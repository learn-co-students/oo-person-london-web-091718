require "pry"

class Person
attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

def happiness=(happiness)
  @happiness = happiness
  # if value > 10 ? value == 10 : value < 0 ? value == 0
  if @happiness > 10
    @happiness = 10
  elsif @happiness < 0
    @happiness = 0
  # binding.pry
  end
end

  def hygiene=(hygiene)
    range = (0..10)
    if range.include?(hygiene)
      @hygiene = hygiene
    elsif hygiene < 0
      @hygiene = range.min
    elsif hygiene > 10
      @hygiene = range.max
    end
    @hygiene
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    elsif topic != "weather" || topic != "politic"
      "blah blah blah blah blah"
    end
  end
end

# binding.pry

p 'end'

# your code goes here

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account


  def initialize(name, hygiene = 8, happiness = 8)
    @name = name
    @bank_account = 25
    @hygiene = check_index(hygiene)
    @happiness = check_index(happiness)
  end

  def happiness=(new_happiness_value)
    @happiness = check_index(new_happiness_value)
  end

  def hygiene=(new_hygiene_value)
    @hygiene = check_index(new_hygiene_value)
  end

  def happy?
    good?(@happiness)
  end

  def clean?
    good?(@hygiene)
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
    self.hygiene -= 3
    self.happiness += 2

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
    else
      return "blah blah blah blah blah"
    end
  end

  private
  def check_index(index)
    if index > 10
      return 10
    elsif index < 0
      return 0
    else
      return index
    end
  end

  def good?(index)
    index > 7 ? true : false
  end
end

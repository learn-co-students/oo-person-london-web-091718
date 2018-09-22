require 'pry'

class Person
  attr_accessor :bank_account, :happiness
  attr_reader :name, :hygiene


  def initialize(name)
    @name = name
    @hygiene = 8
    @bank_account = 25
    @happiness = 8
  end

  def happiness=(happiness)
    if happiness < 0
      @happiness = 0
    elsif happiness > 10
      @happiness = 10
    else @happiness = happiness
    end
  end

  def happy?
    if self.happiness > 7
      true
    else
      false
    end
  end

  def hygiene=(hygiene)
    if hygiene < 0
      @hygiene = 0
    elsif hygiene > 10
      @hygiene = 10
    else @hygiene = hygiene
    end
  end

  def clean?
    if self.hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    self.bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene=(hygiene)
    @happiness += 2
    self.happiness=(happiness)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      'blah blah blah blah blah'
    end
  end

end

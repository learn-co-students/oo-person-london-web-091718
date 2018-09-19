

class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(happiness)
    if happiness < 0
      @happiness = 0
    elsif happiness > 10
      @happiness = 10
    else
      @happiness = happiness
    end
  end

  def hygiene=(hygiene)
    if hygiene < 0
      @hygiene = 0
    elsif hygiene > 10
      @hygiene = 10
    else
      @hygiene = hygiene
    end
  end

  def happy?
    @happiness > 7? true : false
  end

  def clean?
    @hygiene > 7? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene += 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene -= 3)
    self.happiness=(@happiness += 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    # friend.happiness=(@happiness += 3) <---
    # self.happiness=(@happiness += 3)  <---- why don't these work??
    friend.happiness += 3
    self.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      friend.happiness -= 2   #<---- tests misleading: #happiness= method not required and actually makes tests fail.. (?)
      self.happiness -= 2   #<---- tests misleading: #happiness= method not required and actually makes tests fail.. (?)
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      friend.happiness += 1   #<---- tests misleading: #happiness= method not required and actually makes tests fail.. (?)
      self.happiness += 1   #<---- tests misleading: #happiness= method not required and actually makes tests fail.. (?)
      'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end

end

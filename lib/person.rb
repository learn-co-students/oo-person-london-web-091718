# your code goes here
require "pry"

class Person
attr_reader :name
attr_accessor :bank_account, :hygiene, :happiness

def min_max_hygiene
  if self.hygiene > 10
    self.hygiene = 10
  end
  if self.hygiene <0
    self.hygiene = 0
  end
end
def min_max_happiness
  if @happiness > 10
    @happiness = 10
  end
  if self.happiness <0
    self.happiness = 0
  end
end

def hygiene=(points)
  @hygiene=points
  if self.hygiene > 10
    self.hygiene = 10
  end
  if self.hygiene <0
    self.hygiene = 0
  end
end
def happiness=(points)
  @happiness = points
  if @happiness > 10
    @happiness = 10
  end
  if self.happiness <0
    self.happiness = 0
  end
end


def initialize(name="", bank_account = 25, happiness=8, hygiene=8)
  @name = name
  @bank_account = bank_account
  @happiness = happiness
  @hygiene = hygiene
  min_max_hygiene
  min_max_happiness
end



def get_paid(amount=0)
  self.bank_account += amount
  return "all about the benjamins"
end

def happy?
  if self.happiness>7
     return true
   else
    return false
    end
end

def clean?
  if self.hygiene>7
    return true
  else
    return false
  end
end


def take_bath
  self.hygiene += 4
  min_max_hygiene
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness += 2
  self.hygiene -=3
  min_max_hygiene
  min_max_happiness
  return "♪ another one bites the dust ♫"
end

def call_friend(friend=Person.new("friend"))
  self.happiness += 3
  min_max_happiness
  friend.happiness +=3
  friend.min_max_happiness
  return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)
  if topic == "politics"
    self.happiness -= 2
    min_max_happiness
    friend.happiness -=2
    friend.min_max_happiness
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness+=1
    friend.happiness +=1
    friend.min_max_happiness
    min_max_happiness
    return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
  end
end

end

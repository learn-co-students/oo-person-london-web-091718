# your code goes here


class Person
attr_reader :name
attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, happiness=8, hygiene=8)
    @name = name
    @bank_account = 25
    @happiness = happiness
    @hygiene = hygiene
  end



  def happiness=(num)
    @happiness = num
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end


  def hygiene=(num)
    @hygiene = num
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
  end
 end


   def clean?
     @hygiene > 7 ? true : false
   end


   def get_paid(salary)
     @bank_account += salary
     p "all about the benjamins"
   end

   def take_bath
     self.hygiene += 4
     p "♪ Rub-a-dub just relaxing in the tub ♫"
   end

   def work_out
     self.hygiene -= 3
     self.happiness += 2
     p "♪ another one bites the dust ♫"
   end

   def call_friend(name)
     Person.new(name)
     self.happiness += 3
     name.happiness += 3
     p "Hi #{name.name}! It's #{self.name}. How are you?"
   end

   def start_conversation(person, topic)
     if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      p "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      p "blah blah sun blah rain"
    else
      p "blah blah blah blah blah"
    end
  end





end #of class

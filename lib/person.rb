# # your code goes here

# First you need to create a person class that is initialized with a name that cannot be changed.
class Person

    attr_accessor :happiness, :hygiene, :bank_account
    attr_reader :name
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
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

    def bank_accoun=(new_amount)
        @bank_account = new_amount
    end

    def happy?
        happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene +=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness +=2
        self.hygiene -=3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness +=3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        convo = ""
        if (topic == "politics")
            convo = "blah blah partisan blah lobbyist"
            self.happiness -=2
            friend.happiness -=2
        elsif (topic == "weather")
            self.happiness +=1
            friend.happiness +=1
            convo = "blah blah sun blah rain"
        else (topic == "weather")
            convo = "blah blah blah blah blah"
        end
        convo
    end
end



# If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
# If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
# If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".
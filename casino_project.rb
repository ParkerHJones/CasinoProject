# Start game player has a name and an initial bankroll x
# Player can go to different games via menu x
# Slots 
# High / Low x
# Player places bet and wins / loses (hint: rand) x 
# Player's bankroll goes up and down with wins and losses 


#game is odds or evens user guesses if it is odd or even and code displays random number


class Intro
    def initialize
         prompt
    end 
    def prompt
        puts "Welcome to Casino Jones, to start, tell me your name."
        @user_name = gets.chomp #instance variable accessible in multiple methods 
        new_prompt
    end 
    def new_prompt
        puts "Please select what game you would like to play #{@user_name}"
        puts "You have $100 in your bankroll to begin."
        puts "1. Odds/Evens"
        puts "2. Low/High"
        puts "3. Slots"

        choice = gets.to_f
        if choice == 1
            Game_One.new(@username)
        elsif choice == 2 
            Game_Two.new(@username)
        elsif choice == 3
            GameThree.new(@username)
        else 
            puts "Sorry that is not valid"
        new_prompt 
        end 
    end 
end 




class Bankroll
        attr_accessor :balance 
      
        def initialize
          @balance=(100)
        end
      
        def updated_balance
          if choice == rand(1..2) 
            "$#{@balance.add(10)}"
          elsif choice != rand(1..2)
            "$#{@balance.subtract(10)}"
          end 

        end  
      
      end


class Game_One
    attr_accessor :user_guess
    attr_accessor :balance
    def initialize(user_guess)
    @user_guess = user_guess
        prompt 
    end 
    def prompt 
        puts "The game is Odds or evens, if you guess whether the number is odd or even correctly, you win."
        puts "Choose your guess by entering 1. For Odds or 2. For Evens"
        choice = gets.to_f
        puts rand(1..2)
        if choice == rand(1..2)
            puts "Nice! You won $10"
            # "$#{@balance + 10}" #goal is to add 10 to bankroll if won
        elsif choice != rand(1..2)
            puts "oops! you lost $10"
            # "$#{@balance - 10}" #goal is to take ten out if losing
        end 
        puts "Would you like to play another hand? Press 1. for Yes 2. for No." 
        choice = gets.to_f
        if choice == 1 
         prompt
        elsif choice == 2
         Intro.new
        end 
    end 
end

class Game_Two
    attr_accessor :user_guess
    attr_accessor :balance
    def initialize(user_guess)
    @user_guess = user_guess
    prompt
    end 
    def prompt
    puts "The game is Low/High, dealer puts down a card and you guess if the next card will be higher or lower."
    puts "The card that is dealt is" 
    puts rand(1..10)
    puts "Choose 1. For 'Lower' 2. For 'Higher'"
    choice = gets.to_f
    puts rand (1..10)
    if choice = rand(1..10)
        puts "Nice! You won $10"
        # "$#{@balance.sum(10)}"
    elsif choice != rand(1..10)
        puts "Too bad, you lost $10"
        # "$#{@balance.subtract(10)}"
    end 
    puts "Would you like to play another hand? Press 1. for Yes 2. for No." 
        choice = gets.to_f
        if choice == 1 
         prompt
        elsif choice == 2
         Intro.new
        end 
    end 

class GameThree
    attr_accessor :user_guess
    attr_accessor :balance
    def initialize(user_guess)
    @user_guess = user_guess
    prompt 
    end 
def prompt
   puts "This game is slots, when you pull the slot it will tell you if you win or lose"
   puts "When you press '1. Pull' the game will begin"
   pull = gets.to_f
   if pull == 1
    puts rand("Nice you win $10".."Dang you lost $10")
   elsif pull != 1
    puts "That is invalid"
    prompt
   end 
   puts "Would you like to play another hand? Press 1. for Yes 2. for No." 
        choice = gets.to_f
        if choice == 1 
         prompt
        elsif choice == 2
         Intro.new
        end 
    end 
end 
end 

Intro.new  
# Start game player has a name and an initial bankroll x
# Player can go to different games via menu x
# Slots
# High / Low
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
        Menu.new(@user_name)
        Bankroll.new(@user_name)
        Game_One.new(@user_guess)
    end 
end 


class Menu
    attr_accessor :user_name
    def initialize (user_name)
    @user_name = user_name
    prompt 
    end  

    def prompt #this displays a menu that I want to choose from
        puts "Welcome #{@user_name} please select a game you would like to play"
        puts "1) Odds or Evens"
        puts "2) High/Low"
        puts "3) Slots"
        
    end 

end 


class Bankroll
    attr_accessor :user_name
    def initialize(user_name)
    @user_name = user_name
        prompt 
end 
    def prompt 
        puts "Hello #{@user_name} you have $100 to start"
    end 
end


class Game_One
    attr_accessor :user_guess
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
            #goal is to add 10 to bankroll if won
            @bankroll [+10]
        elsif
            puts "oops! you lost $10"
            #goal is to take ten out if losing
            @bankroll [-10]
        end 
    end 
end

Intro.new  
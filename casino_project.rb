# Start game player has a name and an initial bankroll x
# Player can go to different games via menu x
# Slots x
# High / Low x
# Player places bet and wins / loses (hint: rand) x 
# Player's bankroll goes up and down with wins and losses 


require 'colorize'
require_relative 'bankroll'

class Intro
    def initialize
        @bankroll = Bankroll.new
         prompt
    end 

    def prompt
        puts "Welcome to Casino Jones, to start, tell me your name.".colorize(:magenta)
        @user_name = gets.chomp #instance variable accessible in multiple methods #this is the person
        @bankroll = 100  #this is the starting amount that can be adjusted based on results
        menu_prompt
    end 


    def menu_prompt
        puts "Please select what you would like to do #{@user_name}".colorize(:magenta)
        puts "You have $100 in your bankroll to begin.".colorize(:magenta)
        puts "In each game you can either win $10 per play or lose $10 per play.".colorize(:magenta)
        puts "1. Play Odds/Evens"
        puts "2. Play Low/High"
        puts "3. Play Slots"
        puts "4. Show Bankroll Balance" #goal
        puts "5. Exit"
    
        choice = gets.to_f
        if choice == 1
            Game_One.new(@username)
        elsif choice == 2 
            Game_Two.new(@username)
        elsif choice == 3
            Game_Three.new(@username)
        elsif choice == 4
            puts "Your bank roll is $#{@bankroll}"
        menu_prompt
        elsif choice == 5
            exit
        else 
            puts "Sorry that is not valid"
        menu_prompt 
        end 
    end 

        class Game_One  # this is the odds or even created game
            def initialize(bankroll)
            prompt 
            end 
            def prompt 
                puts "The game is Odds or evens, we roll dice, if you guess whether the number will be odd or even correctly, you win.".colorize(:magenta)
                puts "Choose your guess by entering 1. For Odds or 2. For Evens".colorize(:magenta)
                choice = gets.to_f
                puts rand(1..2)
                if choice == rand(1..2)
                    puts "Nice! You won $10"
                     #goal is to add 10 to bankroll if won
                elsif choice != rand(1..2)
                    puts "oops! you lost $10"
                      #goal is to take ten out if losing
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



    class Game_Two   # this is the low high game I did not use face cards for this
        def initialize(bankroll)
        prompt
        end 
        def prompt
        puts "The game is Low/High, dealer puts down a card and you guess if the next card will be higher or lower.".colorize(:magenta)
        puts "The card that is dealt is".colorize(:magenta)
        puts rand(1..10)
        puts "Choose 1. For 'Lower' 2. For 'Higher'"
        choice = gets.to_f
        card_dealt = rand (1..10)
        puts card_dealt
        if choice <= card_dealt
            puts "Nice! You won $10"
            # "$#{@balance.sum(10)}"
        elsif choice >= card_dealt
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
    end 



    class Game_Three              # this is the slots game solely based randomly on winning or losing  

        def initialize(bankroll)
        prompt 
        end 


    def prompt
       puts "This game is slots, when you pull the slot it will tell you if you win or lose"
       puts "When you press 1 the game will begin"
       
       pull = gets.to_f
       if pull == 1
         rand(2..3)
        elsif pull != 1
        puts "That is invalid"
        prompt
       end 

       result = rand(2..3)
       if result == 2 
        puts "Congratulations You win $10"
       elsif result == 3
        puts "Dang You lose $10"
       end 

       

       puts "Would you like to play another again? Press 1. for Yes 2. for No." 
            choice = gets.to_f
            if choice == 1 
             prompt
            elsif choice == 2
             Intro.new
            end 
        end 
    end 

Intro.new  
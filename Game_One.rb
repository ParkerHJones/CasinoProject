class Game_One

    attr_accessor :user_guess
    attr_accessor :balance
    def initialize(user_guess)
    @user_guess = user_guess
    def initialize(wallet)
    @wallet = wallet
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
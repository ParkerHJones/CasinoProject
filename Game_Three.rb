class Game_Three
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
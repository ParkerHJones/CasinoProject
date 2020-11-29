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




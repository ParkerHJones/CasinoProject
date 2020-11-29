class Wallet
    attr_accessor :balance 
  
    def initialize
      @balance=(100)
    end
  
    def updated_added_balance
        "$#{@balance.add(10)}"
    end
    def updated_subtracted_balance
        "$#{@balance.subtract(10)}"
    end 


end 
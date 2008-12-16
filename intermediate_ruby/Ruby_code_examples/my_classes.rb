require "extensions/numeric"

class Die
    @@MAX = 6
    def initialize
      @face_value = 1
    end
    
    def roll
      @face_value = rand(@@MAX)+1
    end
    def to_s
      @face_value
    end
    
    attr_accessor :face_value
end

class PairOfDice
    def initialize
      @die1 = Die.new
      @die2 = Die.new
    end
    def roll
      @die1.roll
      @die2.roll
    end
    def sum
      @die1.face_value + @die2.face_value
    end
    def to_s
      "Sum of #{@die1.to_s} and #{@die2.to_s} is: #{sum}"
    end
    attr_accessor :die1, :die2
end

class Account

    @@RATE = 0.035
    
    def initialize(owner, account, initial)
      @owner = owner
      @account = account
      @balance = initial
    end
    
    def deposit(amount)
      @balance += amount
    end
    
    def withdraw(amount, fee)
      @balance = @balance - amount - fee
    end
    
    def add_interest
      @balance += (@balance * @@RATE)
    end
    
    def to_s
      "#@account - #@owner: #{@balance.format_s(:usd)}"
    end
    
    attr_accessor :owner, :account, :balance
    attr_reader :RATE
end
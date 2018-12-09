require 'pry'

class BankAccount
  attr_reader :name
  attr_accessor :acct, :balance, :status

  # @name = [ ]

  def initialize(name)
    @acct = acct
    @name = name
    @balance = 1000
    @status = 'open'
    # @closed = false
    # @valid = true
  end

  def deposit(money)
    @balance = @balance + money
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    # binding.pry
    @balance > 0 && @status == 'open' #here I'm checking that the receiver account is valid
    # sender = Transfer.new
    #check that sender account is valid
      #need to check that sender acct has balance < 0 and status is open
      # Transfer.sender.balance < 0 && Transfer.sender.status == 'open'
  end

  def close_account
    @status = 'closed'
  end

  # def add_name
  #   @name << name.freeze
  # end

end

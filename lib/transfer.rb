require 'pry'

class Transfer
  attr_accessor :status
  attr_reader :amount, :sender, :receiver

  def initialize(sender, receiver, amount)
    # @transfer = transfer
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amount
  end

# binding.pry

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    #binding.pry
    # c = 0
    # while c < 1 do
    if self.status == "pending" && self.sender.valid? && self.sender.balance > amount
      self.sender.balance = self.sender.balance - amount
      self.receiver.balance = self.receiver.balance + amount
      self.status = 'complete'
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
      # if !@status =
      # c += 1
    # end
    #subtract amount from senders balance
      #add to receivers balance
  end

  def reverse_transfer
    if self.status == "complete"
      self.sender.balance = self.sender.balance + amount
      self.receiver.balance = self.receiver.balance - amount
      self.status = 'reversed'
    end
  end

end

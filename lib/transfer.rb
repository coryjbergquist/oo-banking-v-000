class Transfer
  attr_accessor :sender, :receiver, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def amount
    @amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    @status = "rejected" if valid? == false
      if @sender.balance >= @amount
        @sender.balance -= @amount
        @reciever.balance += @amount
        @status = "complete"
      elsif @status == "rejected"
        "Transaction rejected. Please check your account balance."
      else @status == "complete"
    end
end


end

class Transfer
  attr_accessor :sender, :receiver, :status

  def initialize(sender, receiver, status)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 50
  end

  def amount
    @amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
    @status = "rejected"
  end

  def execute_transaction
    if self.valid? == false
      "Transaction rejected. Please check your account balance."
    elsif @status != "complete"
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
  end
end


end

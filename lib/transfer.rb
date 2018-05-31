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
  end

  def execute_transaction
      "Transaction rejected. Please check your account balance." if self.valid? == false
    if @status == "complete"
    else
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
  end
  end


end

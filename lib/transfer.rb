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
    
    @status = "complete"
  end
end

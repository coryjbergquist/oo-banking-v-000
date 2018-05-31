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
    @status = "rejected" if @sender.valid? && @receiver.valid? == false
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    binding.pry
    if @status == "pending"
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
  elsif @status == "complete"

  else @status == "rejected"
      "Transaction rejected. Please check your account balance."

  end
end


end

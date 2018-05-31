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
    
  end

end

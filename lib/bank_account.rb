class BankAccount
  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def name
    @name
  end

  def deposit(num)
    @balance += num
    @balance
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    if @balance > 0
      @status = "open"
    else
      @status = "closed"
    end
    @status == "open"
    binding.pry
  end

end

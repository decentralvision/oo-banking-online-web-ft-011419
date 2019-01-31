class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  def initialize(name)
    @name = name
    @balance = 1000
    @status = 'open'
  end
  def deposit(money)
    @balance += money
  end
  def self.display_balance
    "Your balance is $#{@balance}."
  end
  def self.valid?
    @balance >0 && @status == 'open'
  end
  def close_account
    @status = 'closed'
  end
end

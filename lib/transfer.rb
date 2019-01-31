class Transfer
  attr_reader :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = sender
    @status = 'pending'
    @amount = amount
  end
  def valid?
    @sender.valid? && @receiver.valid? && @status == 'pending'
  end
  def execute_transaction
    if self.valid? do
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = 'complete'
    else
      'Transaction rejected. Please check your account balance.'
    end
  end
end

class Transfer
  attr_reader :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = sender
    @status = 'pending'
    @amount = amount
  end
  def valid?
    @sender.valid? && @receiver.valid?
  end
  def execute_transaction

  end
end

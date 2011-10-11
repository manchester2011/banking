# account.rb

class Account

 attr_reader :balance

  def initialize(starting_balance =0.00)
    @balance = starting_balance
  end


  def deposit_amount(deposit)
    @balance = balance + deposit

  end


  def transfer (account, value)

    #@balance will return the current balance cuz it's an instance variable
    @balance = @balance-value

    account.deposit_amount(value)

  end


end
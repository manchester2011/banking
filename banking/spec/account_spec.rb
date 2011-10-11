# account_spec.rb

require 'rspec'
require '../lib/account.rb'

describe Account do

  it "should initially have a balance of zero" do
    account = Account.new
    account.balance.should == 0.0
  end

  it "should have a balance equal to the starting balance" do
    starting_balance = 100.0
    subject = Account.new(starting_balance)
    subject.balance.should == starting_balance
  end





  it "should add value to the balance" do

    starting_balance = 60.35
    deposit = 34.54

    account1 = Account.new(starting_balance)
    account1.deposit_amount(deposit)
    account1.balance.should == starting_balance + deposit




  end


  it "should transfer balance from account 1 to account 2"  do

       starting_balance1 = 200.0

       value = 100.00

       starting_balance2 = 200.35



       account1 = Account.new(starting_balance1)
       account2 = Account.new(starting_balance2)




       account1.transfer(account2,value)

       # don't make this mistake account1.balance.should == account1.balance-value cuz it's already been transfered
       account1.balance.should == starting_balance1 - value
       account2.balance.should == starting_balance2+value






  end




end

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





end

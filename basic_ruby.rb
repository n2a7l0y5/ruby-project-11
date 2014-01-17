# Project 11

# You are given a project from a client. The client wants you to create a banking system. Here is what your program needs to do:

# 1. Allow a customer to deposit/withdraw/transfer and check the balance of their account.

class Account
#should keep track of the customers name, their balance
   attr_accessor :balance, :account_holder
    def initialize
     @balance = 0
    end
# Methods to allow for deposit, withdrawal and transferring of funds
    def deposit(amount)
     @balance += amount
    end

    def withdraw(amount)
     @balance -= amount
    end

    def self.transfer(amount, from_account, to_account)
      from_account.withdraw(amount)
      to_account.deposit(amount)
    end
end
# => nil

a = Account.new # => #<Account:0x007f8d891dc068 @balance=0>
a.account_holder = ‘Steve’ # => "Steve"
a.deposit 100
puts a.balance # => 100

a.withdraw 25
puts a.balance # => 75

b = Account.new # => #<Account:0x007f8d891a5068 @balance=0>
b.account_holder = ‘Jeron’ # "Jeron"
b.deposit 4000
puts b.balance # => 4000

Account.transfer(50, a, b)  #What we are saying here is I want to transfer 50 from a to b => 4050
puts a.balance #should print 25 => 25
puts b.balance #should print 4025 => 4050 (because at first "b" deposited 4000 in his account then recieved 50 from "a" so his balance should be 4050(4000 + 50) but not 4025 as writen above )

# Resources: -	http://teamtreehouse.com/library/ruby-foundations/objects-classes-and-variables/objects-and-classes
# -	http://www.codecademy.com/forum_questions/51588d9a92d62c8079002344
# - http://rebo.ruhoh.com/dci-role-injection-in-ruby-using-method-aliasing/
# -
# - http://stackoverflow.com/questions/15588815/what-is-the-correct-way-to-transfer-values-between-models-in-rails-3

require "my_classes"

acct1 = Account.new("Ted Murphy","123456",102.56)
acct2 = Account.new("Jane Smith","35332",40.00)
acct3 = Account.new("Edward Dempsey", "3234444", 759.32)
acct1.deposit(25.85)
smith_balance = acct2.deposit(500.00)
puts "Smith balance after deposit: #{smith_balance}"
puts "Smith balance after withdrawl: #{acct2.withdraw(430.75,1.50)}"
acct1.add_interest
acct2.add_interest
acct3.add_interest
puts acct1.to_s
puts acct2.to_s
puts acct3.to_s
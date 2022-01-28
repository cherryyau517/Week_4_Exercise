# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { from_user: nil, to_user: "ben", amount: 20000 },
  { from_user: nil, to_user: "brian", amount: 20000 },
  { from_user: "ben", to_user: "evan", amount: 9000 },
  { from_user: "brian", to_user: "anthony", amount: 7000 },
  { from_user: "evan", to_user: "anthony", amount: 400 },
  { from_user: "ben", to_user: "anthony", amount: 1500 },
  { from_user: "anthony", to_user: "ben", amount: 4500 },
  { from_user: "anthony", to_user: "evan", amount: 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
anthony_total=0
for add_amt in blockchain
  anthony_total += add_amt[:amount] if add_amt [:to_user] == "anthony"
end
for red_amt in blockchain
  anthony_total -= red_amt[:amount] if red_amt [:from_user] == "anthony"
end

ben_total=0
for add_amt in blockchain
  ben_total += add_amt[:amount] if add_amt [:to_user] == "ben"
end
for red_amt in blockchain
  ben_total -= red_amt[:amount] if red_amt [:from_user] == "ben"
end

brian_total=0
for add_amt in blockchain
  brian_total += add_amt[:amount] if add_amt [:to_user] == "brian"
end
for red_amt in blockchain
  brian_total -= red_amt[:amount] if red_amt [:from_user] == "brian"
end

evan_total=0
for add_amt in blockchain
  evan_total += add_amt[:amount] if add_amt [:to_user] == "evan"
end
for red_amt in blockchain
  evan_total -= red_amt[:amount] if red_amt [:from_user] == "evan"
end

puts "Ben's KelloggCoin balance is " + "#{ben_total}"
puts "Brian's KelloggCoin balance is " + "#{brian_total}"
puts "Evan's KelloggCoin balance is " + "#{evan_total}"
puts "Anthony's KelloggCoin balance is " + "#{anthony_total}"
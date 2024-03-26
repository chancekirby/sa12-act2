require "httparty"

response = HTTParty.get("https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd")

# Sort in order of market cap 
response.sort { |coin| coin["market_cap_rank"]}

5.times do |coin|
    puts "Name: #{response[coin]["name"]}, Current Price: #{response[coin]["current_price"]}, Market Cap: #{response[coin]["market_cap"]} Rank: #{response[coin]["market_cap_rank"]}"
end
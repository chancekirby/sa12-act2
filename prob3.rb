require "httparty"

response = HTTParty.get("http://worldtimeapi.org/api/timezone/Asia/Tokyo")

date_pattern = /\d{4}-\d{2}-\d{2}/
time_pattern = /\d{2}:\d{2}:\d{2}/
date = response["datetime"].match(date_pattern)
time = response["datetime"].match(time_pattern)

timezone = response["timezone"]

puts "The current time in #{timezone} is #{date} #{time} "

# Display the specified area and location, the current date, and the time, ensuring to format \
# the output for readability (e.g., "The current time in Europe/London is 2023-09-15 14:30:25").
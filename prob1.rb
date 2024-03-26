require "httparty"

response = HTTParty.get("https://api.github.com/users/chancekirby/repos")

most_stared = nil
most_stars = 0
response.each do |repository|
    if repository["stargazers_count"] > most_stars
        most_stared = repository
        most_stars = repository["stargazers_count"]
    end
end

puts "Most starred: #{most_stared["name"]}, Description: #{most_stared["description"]}, Number of Stars: #{most_stared["stargazers_count"]}, URL: #{most_stared["html_url"]}"


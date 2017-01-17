require 'json'
require 'open-uri'


#ask the user for his username
puts 'What is your username?'
print '> '
user_name = gets.chomp

# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/#{user_name}"

# open url
# read the content of the page
# parse the content

user_serialized = open(url).read
user = JSON.parse(user_serialized)

p "Your name is #{user['login']} and you have #{user['public_repos']} repos!"

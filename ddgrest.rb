require 'rest-client'

puts "Enter a search query for Ducduckgo Images. [Press enter to search the default 'cats']:"
query = gets.chomp
if query == ''
  query = "cats"
end
ddgi = RestClient.get "https://duckduckgo.com/?q#{query}&iax=1&ia=images"

puts ddgi.code
puts ddgi.cookies
puts ddgi.headers
puts ddgi.to_str

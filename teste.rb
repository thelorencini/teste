require 'httparty'


#formBody = { director: 'George Lucas'}
#response = HTTParty.post("http://apifrisbypost.keeptesting.com.br/user", :body=> formBody)
#response = HTTParty.get("https://swapi.co/api/films/", :body=> formBody)

response = HTTParty.get("https://swapi.co/api/films/")
puts response.code
puts response.message

item = response['results']

item.each do |item_new|
  #puts item_new['director']
  if item_new['director'].include? "George Lucas" and item_new['producer'].include? "Rick McCallum"
    puts item_new['director']
  end
end

#teste.each do |item|
#  diretor = item["director"]

#puts item["director"]
 # if item.include? "George Lucas"
 #   puts item
# end
  # etc
#end
#puts "response headers :#{response.headers}"
#puts "response body :#{response.body}"

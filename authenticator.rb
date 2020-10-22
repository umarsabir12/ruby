users = [
  {username: "umar", password: "pass1" },
  {username: "jon", password: "pass2" },
  {username: "jack", password: "pass3" },
  {username: "hiesenberg", password: "pass4" }
]


p "Welcome to the authenticator "

25.times{print"-"}
puts
puts "This the authenticator proj Best of luck"


def auth_user(username, password, list_of_users)
  
  
  list_of_users.each do |user_record| 
     if user_record[:username] == username  && user_record[:password] == password
           return user_record
          end 
       end
           "The given info is not correct "
    end





attempt = 1;

while attempt < 4;
puts "Enter username  :"
username = gets.chomp
puts "Enter password"
password = gets.chomp
authentication = auth_user(username, password, users)    
puts authentication
puts "press n to exit"
exit = gets.chomp.downcase
break if exit == "n"
attempt += 1 
end
puts "you have exceeded the limit" if attempt == 4




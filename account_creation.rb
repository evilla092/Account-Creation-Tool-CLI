require "./user_account.rb"

def account_creation
  puts "Would you like to create a new account? (Yes or No)"
  create_account = gets.chomp.downcase
  account_details = {}
  if create_account == "yes"
    puts "Enter your first name:"
    account_details["first_name"] = gets.chomp
    puts "Enter your last name:"
    account_details["last_name"] = gets.chomp
    puts "Enter you Date of Birth in month day, year format "
    account_details["dob"] = gets.chomp
    puts "Enter your username"
    account_details["username"] = gets.chomp
    puts "Enter your password"
    account_details["password"] = gets.chomp

    @account_list[@id_count.to_s] = UserAccount.new(account_details.fetch("first_name"), account_details.fetch("last_name"), account_details.fetch("dob"), account_details.fetch("username"), account_details.fetch("password"), @id_count)
    @id_count += 1

    puts "Your account has been created!"

  elsif create_account == "no"
    puts "Press Enter to return to Main Menu"
    gets.chomp
  else
    puts "Incorrect input. Try again."
  end
  
end

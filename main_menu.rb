require "./account_creation.rb"

def main_menu
  while @running == true

    puts """
    ---Account Creator---
    --What would you like to do?--
    1. You can type 'accounts' to see a full list of accounts created.
    2. You can Type 'new' to make a new account
    3. You can type your 'username' to get a list of all your user details
    4. Type 'Exit' to close the program
    """
    
    menu_answer = gets.chomp.downcase
    if menu_answer == "accounts"
      puts "Here are all the accounts created so far: "
      @account_list.each do |key, value|
        print "#{key}. #{value.username}, "
      end
      puts """
      .
      .
      .
      Press Enter to go back to main menu
      """
      gets.chomp
    elsif menu_answer == "new"
      account_creation
    elsif @account_list.has_key?(menu_answer)
      puts @account_list.fetch(menu_answer).id
      puts @account_list.fetch(menu_answer).username
      puts @account_list.fetch(menu_answer).first_name
      puts @account_list.fetch(menu_answer).last_name
      puts @account_list.fetch(menu_answer).dob
      puts @account_list.fetch(menu_answer).password
    elsif menu_answer == "exit"
      @running = false
      puts "Press enter to close"
      gets.chomp
    
    else
      puts
      puts "I'm sorry  '#{menu_answer}'  input was not recognized please try again."
    end
  end

end

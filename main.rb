# main menu
def main_menu
  puts "Welcome to the Ruby Calculator!"
  puts "Please select an option:"
  puts "1. Add"
  puts "2. Subtract"
  puts "3. Multiply"
  puts "4. Divide"
  puts "5. Quit"
  print "> "
  choice = gets.chomp.to_i
  case choice
  when 1
    add
  when 2
    subtract
  when 3
    multiply
  when 4
    divide
  when 5
    puts "Goodbye!"
    exit
  else
    puts "Invalid choice"
    main_menu
  end
end
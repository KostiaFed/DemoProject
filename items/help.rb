# Тут потрібно виводити всі команди та пояснення до них.

class Help

    def run
      puts File.read("help.txt")
    
      command_name =gets.chop.downcase
      case command_name
        when "1"
          puts "Displays information about the specified command (name, description, parameters)"
        when "2"
          puts "Displays all tasks"
        when "3"
          puts "Displays all tests"
        when "4"
          puts "Runs the test"
        when "5"
          puts "Display only lines of code, comments do not need to be displayed."
        when "6"
          puts "Launches the task contained in the file file_name"
        when "7"
          puts "Show the author of a chosen kata/test"
        else
          puts "Wrong command! Type 'help' to see list of commands."
            end
        end
    end
    
    
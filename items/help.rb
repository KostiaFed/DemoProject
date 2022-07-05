class Help
  def run(arg = "")
    case arg
      when "author"
        return "Show the author of a chosen kata/test"
      when "help"
        return "Display list of comands ('help [command]' to see details)"
      when "run"
        return "Launches the task contained in the file file_name"
      when "show"
        return "Display only lines of code, comments do not need to be displayed"
      when "tests"
        return "Displays all tests"
      when "tasks"
        return "Displays all tasks"
      when "test"
        return "Runs the test contained in the file file_name"
      when "logo"
        return "Clears the screen and displays the logo"
      when "clear"
        return "Clears the screen"
      when "exit"
        return "Exits the program"
      else
        return "List of commands:\n" +
                " author [file_name]\n" +
                " help [command]\n" +
                " run [file_name]\n" +
                " show [file_name]\n" +
                " tests\n" +
                " tasks\n" +
                " test [file_name]\n" +
                " logo\n" +
                " clear\n" +
                " exit"
    end
  end
end

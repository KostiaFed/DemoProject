# Виклик кат і робота з консоллю

# розкоментувати рядок нижче щоб імпортувати всі файли з папки items
Dir["./items/*.rb"].each {|file| require file }


class Main
    def initialize
        logo()
        # Starts main loop
        loop()
    end

    def loop
        print "> "
        buff = gets.chomp
        choose = buff.split(" ")[0]
        argument = buff.split(" ")[1]
        arg = buff.split(" ")[2]

        case choose
        when "help"
          #Displays information about commands
          #'-s' just to show list of command
          #'-d' to show info with descriptions
          # number of command to show only this one
            puts Help.new.run(argument)
        when "run"                          #not ready yet
            # puts Run.new.run(argument)
        when "show"
            puts Show.new.run(argument, arg)
        when "specs"                        #fail
            puts Specs.new.run()
        when "tasks"                        #fail
            puts Tasks.new.run()
        when "test"
            puts Test.new.run(argument)
        when "tests"
            puts Tests.new.run()
        when "author"                        #hz
            puts Author.new.run(argument)
        when "sort"
            puts Sort.new.run(argument)
        when "logo"
            logo()
        when "clear"
            system("cls")
        when "exit"
            puts "\nBye!\n"
            exit
        else
            puts "Wrong command! Type 'help' to see list of commands."
        end
        loop()
    end

    def logo
        system("cls")
        puts "                              @@@@                                                                        "
        puts "                             @@      @                                                                    "
        puts "                            :@       @          ,           ,,                                    ,       "
        puts "  @@h5#@@     M@@BX#@@9    @@@@@@; @@@@@@;  @#@@@@@@s   :@@@@@@@#    A@@ M@@@ @@@S     @@@    @@@@@@@@    "
        puts " @A          @#       #@    ,@       @     @@@     :   &@@#    @@#   A#@9@@s;  @@@    9@@B  5@@M    @@@   "
        puts " M@,        @B         @A   :@       @     3#@#        @@#     .@@&  A@@#      A#@5   @@#   @@@      @@@  "
        puts "   :@@@.    @          @@   :@       @       B@@@@#   X@@@@@@@@@@@B  A@@5       @@@  #@@,   @@@@#@@@@@@@  "
        puts "       @@   @H         @H   :@       @           @@@B  @@@           A@@:        @@@ #@#    @@@           "
        puts "        #.   @M       @#    :@       @      @.   H@@#  r@@r    @G   A@@:        H@@#@#     .#@#B    @@    "
        puts " #@#;,B@@     @@@Xrh@M     :@       i@@@@ @#@@@@@@H     @@@@@@@@@   A@@:         @@@@&       @@#@@@@@@    "
        puts "\n\n\n\n"
        puts "Type 'help' to see list of commands:"
    end
end

Main.new

# Виклик кат і робота з консоллю

# розкоментувати рядок нижче щоб імпортувати всі файли з папки items
Dir["./items/*.rb"].each {|file| require file }


class Main
    def initialize
        logo
        # Starts main loop
        loop
    end

    def loop
        choose, user_input = retrieve_user_input

        begin
            case choose
            when "help"
                puts Help.new.run(*user_input)
            when "run"
                puts launch(*user_input)
            when "show"
                puts Show.new.run(*user_input)
            when "specs"
                @specs ||= Specs.new.run(*user_input)
                puts @specs
            when "tasks"
                @tasks ||= Tasks.new.run(*user_input)
                puts @tasks
            when "test"
                puts Test.new.run(*user_input)
            when "tests"
                @tests ||= Tests.new.run(*user_input)
                puts @tests
            when "author"
                puts Author.new.run(*user_input)
            when "sort"
                puts Sort.new.run(*user_input)
            when "logo"
                logo
            when "clear"
                system("cls")
            when "exit"
                puts "\nBye!\n"
                exit
            else
                puts "Wrong command! Type 'help' to see list of commands."
            end
        rescue ArgumentError
            puts "Bad arguments! Type 'help' to see list of commands."
        rescue
            puts "Something went wrong! Internal error."
        end

        loop
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

    private
    def retrieve_user_input
        print "> "
        buff = gets.chomp
        choose = buff.split(" ")[0]
        user_input = buff.split(" ")[1..-1]
        return choose, user_input
    end
end

Main.new

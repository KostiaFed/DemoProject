# Виклик кат і робота з консоллю

# розкоментувати рядок нижче щоб імпортувати всі файли з папки items
# Dir["./items/*.rb"].each {|file| require file }


class Main
    def initialize
        @choose = ""
        @argument = ""

        @output = ""

        # Ініціалізація всіх функцій   (Розкоментовувати як тільки появляються класи)
        # @help = Help.new
        # @run = Run.new
        # @show = Show.new
        # @specs = Specs.new
        # @tasks = Tasks.new
        # @test = Test.new
        # @tests = Tests.new
        # @author = Author.new

        Logo()
        # Starts main loop
        Loop()
    end

    def Loop
        while true
            print "> "
            buff = gets.chomp.downcase
            @choose = buff.split(" ")[0]
            @argument = buff.split(" ")[1]
            
            case @choose
            when "help"
                # @output = @help.run(@argument)
                # puts @output
            when "run"
                # @output = @run.run(@argument)
                # puts @output
            when "show"
                # @output = @show.run(@argument)
                # puts @output
            when "specs"
                # @output = @specs.run(@argument)
                # puts @output
            when "tasks"
                # @output = @tasks.run(@argument)
                # puts @output
            when "test"
                # @output = @test.run(@argument)
                # puts @output
            when "tests"
                # @output = @tests.run(@argument)
                # puts @output
            when "author"
                # @output = @author.run(@argument)
                # puts @output
            when "logo"
                Logo()
            when "clear"
                system("cls")
            when "exit"
                puts "\nBye!\n"
                break
            else
                puts "Wrong command! Type 'help' to see list of commands."
            end
        end
    end

    def Logo
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

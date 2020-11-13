class SuperSmash::CLI

    def call
        clear
        welcome 
        Api.get_data
        input
        input_2
    end 

    def welcome 
        puts "Welcome To The Super Smash Brothers Character Ranker!".colorize(:green).colorize(:background => :black)
        puts "\nPlease select the number for a character or type exit:\n".colorize(:blue).colorize(:background => :black)
    end 

    def input 
        Character.list
        input = gets.chomp
        index = input.to_i
        clear
        if  index <= Character.names.length && index > 0
            adjusted_index = index - 1
            info = Character.info[adjusted_index]
            puts "#{info}"
            puts "\nType list to search for another character or exit to quit.".colorize(:blue).colorize(:background => :black)
        elsif 
            input == "exit" 
            clear
            puts "Goodbye!".colorize(:green).colorize(:background => :black)
            exit!  
        else 
            Character.all.clear 
            puts "Incorrect selection, please try again or exit".colorize(:red).colorize(:background => :black)
            puts "3".colorize(:magenta).colorize(:background => :black)
            sleep 1 
            puts "2".colorize(:yellow).colorize(:background => :black)
            sleep 1 
            puts "1".colorize(:green).colorize(:background => :black)
            sleep 1 
            clear
            call
            
        end 
    end 
        
    def input_2
        input = gets.chomp
        if 
            input == "list"
            Character.all.clear
            call
        elsif
            input == "exit"
            clear
            puts "Goodbye!".colorize(:green).colorize(:background => :black)
            exit!
        else 
            clear 
            puts "Try Again".colorize(:red).colorize(:background => :black)

            puts "\nType list to search for another character or exit to quit.".colorize(:blue).colorize(:background => :black)
            input_2
        end 
    end 

    def clear
        system("clear")
    end
  
end 
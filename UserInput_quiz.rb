class Menu
    def quiz_menu
        puts
        puts "           Welcome to Trivia Game."
        puts
        puts "   Would you like to attempt the game at "
        puts " | {E}ASY LEVEL | {H}ARD LEVEL | {Q}UIT | "
        getLevel()
    end

    def getLevel()
        levelchoice = gets.chomp.downcase
        
        while levelchoice != "q"
            case "e"
                # Create a new easy Quiz Object
            case "h"
                # Create a new hard Quiz object
        end
    end

    # get answer from user for question
    def getAnswer()
        userInput = gets.chomp.downcase
    end
end
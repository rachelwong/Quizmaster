class Screen
    def welcome
        puts
        puts " *>>****************>>* ??? *<<*************<<*"
        puts
        puts "         = WELCOME to TRIVIA PURSUIT ="
        puts "      Would you like to play the game at "
        puts "  | {E}ASY LEVEL | {H}ARD LEVEL | or {Q}UIT | "
        puts
        puts " *>>****************>>* ??? *<<*************<<*"
    end

    def confirm_level(level_choice)
        puts "<<<<<<<<<<<<<<<< ### >>>>>>>>>>>>>>>>>"
        puts "You have chosen to play at #{level_choice} level."
        puts "<<<<<<<<<<<<<<<< ### >>>>>>>>>>>>>>>>>"
    end

    def correct(user_choice)
        puts "*********** ??? ************"
        puts "       '#{user_choice}' is CORRECT!"
        puts "*********** ??? ************"
    end

    def wrong(user_choice)
        puts "*********** ??? ************"
        puts "       '#{user_choice}' is WRONG!"
        puts "*********** ??? ************"
    end

    def invalid
        puts " !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        puts "        INVALID INPUT"
        puts " !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    end

    def scoreboard(result)
        puts
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "You have scored #{result} out of 50."
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts
    end

    def goodbye
        puts " ****************** ??? *******************"
        puts "                 GOOD BYE!"
        puts " ****************** ??? *******************"
    end
end
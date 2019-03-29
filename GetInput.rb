require_relative 'Screen'

class GetInput
    def initialize
        @screen = Screen.new
    end

    def user_choice
        puts "What is your answer:"
        choice = gets.strip.upcase
        allowed_choices =["A", "B", "C", "D", "E", "H", "Q"]
        # if user input a, b, c, d or q
        if allowed_choices.include?(choice)
            return choice # return choice back to Model
        # if user input anything other a, b, c, d, q
        else
            @screen.invalid # output error screen
        end
        @screen.goodbye
    end
end
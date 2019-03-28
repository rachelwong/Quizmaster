require_relative 'GetInput'
require_relative 'Screen'
require_relative 'Quiz'
class QuizController
    def initialize
        @screen = Screen.new
        @get = GetInput.new 
        @hardquiz = HardQuiz.new
        @easyquiz = EasyQuiz.new
    end

    def run
        @screen.welcome # Welcome Screen
        level_choice = @get.user_choice # Get User Input      
        while level_choice != "Q"
            case level_choice
                when "E"
                    level_choice = "Easy"
                    @screen.confirm_level(level_choice)
                    go_easyQuiz()
                when "H"
                    level_choice = "Hard"
                    @screen.confirm_level(level_choice)
                    go_hardQuiz()
                else
                    @screen.invalid
            end
                @screen.goodbye
        end
    end

    def go_hardQuiz
        @hardquiz.get_questions
    end

    def go_easyQuiz
        @easyquiz.get_questions
        
    end

end
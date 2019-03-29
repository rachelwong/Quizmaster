require_relative 'GetInput'
require_relative 'Screen'
require_relative 'Quiz'
class QuizController
    def initialize
        @screen = Screen.new
        @get = GetInput.new 
        @hardQuiz = HardQuiz.new
        @easyQuiz = EasyQuiz.new
        @score = 0
    end

    def run
        @screen.welcome # Welcome Screen
        level_choice = @get.user_choice # Get User Input      
        while level_choice != "Q"
            case level_choice
                when "E"
                    level_choice = "Easy"
                    @screen.confirm_level(level_choice)
                    run_easyQuiz()
                when "H"
                    level_choice = "Hard"
                    @screen.confirm_level(level_choice)
                    run_hardQuiz()
                else
                    @screen.invalid
            end
                @screen.goodbye
        end
    end

    def go_hardQuiz
        for @hardQuiz do |question|
            puts question.query
            answer = gets.chomp.upcase

            if answer == question.correct_ans
                @score += 10
                @screen.correct(answer)
                @screen.scoreboard(@score)
                gets.chomp
            else
                @screen.wrong(answer)
                @screen.scoreboard(@score)
                gets.chomp
            end
    end

    def go_easyQuiz
        for @easyQuiz do |question|
             puts question.query
             answer = gets.chomp.upcase
             
             if answer == question.correct_ans
                @score += 10
                @screen.correct(answer)
                @screen.scoreboard(@score)
                gets.chomp
             else
                @screen.wrong(answer)
                @screen.scoreboard(@score)
                gets.chomp
             end
    end

end
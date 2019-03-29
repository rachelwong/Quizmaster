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
                # When easy level is chosen
                when "E"
                    level_choice = "Easy"
                    @screen.confirm_level(level_choice)
                    run_easyQuiz() # run the easy quiz
                # When Hard level is chosen
                when "H"
                    level_choice = "Hard"
                    @screen.confirm_level(level_choice)
                    run_hardQuiz() # run the hard quiz
                else
                    # invalid input
                    @screen.invalid
            end
                # Exit screen
                @screen.goodbye
        end
    end

    def run_hardQuiz
        # for every question in the Questions_list object of @hardquiz
        for question in @hardQuiz.get_questions do
            puts question.query # print the question
            answer = @get.user_choice # ask the user for the answer

            # if the answer matches correct answer
            if answer == question.correct_ans
                @score += 10 # increment score by 10 
                @screen.correct(answer) # display correct message
                @screen.scoreboard(@score) # display score
                gets.chomp # wait for user to press enter
            else
                @screen.wrong(answer) #display wrong message
                @screen.scoreboard(@score) #display score
                gets.chomp # wait for user to press enter
            end
        end
    end

    def run_easyQuiz
        # for every question in the Questions_list object of @easyquiz
        for question in @easyQuiz.get_questions do
             puts question.query # display the question
             answer = @get.user_choice # get user input
             # if the input matches the correct answer
             if answer == question.correct_ans
                @score += 10 # increment score by 10
                @screen.correct(answer) # display correct message
                @screen.scoreboard(@score) # display score
                gets.chomp # wait for user to press enter
             else
                @screen.wrong(answer) # display wrong message
                @screen.scoreboard(@score) # display score
                gets.chomp # wait for user to press enter
             end
        end
    end
end
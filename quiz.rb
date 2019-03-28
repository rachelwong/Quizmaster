require_relative 'Question'

class Quiz
    attr_reader :Questions
    def initialize
        @Questions = []
        # add questions to the Questions instance variable array
    end
end

class HardQuiz < Quiz 
    def get_question()
        # Set Questions
        qh1 = "HQ: What is the capital of Australia? /n
        | A: Hong Kong | B: Sydney | C: Brisbane | D: Canberra |"
        qh2 = "HQ: Which city has the higher standard of living? /n
        | A: New York City | B: Sydney | C: Tokyo | D: Hong Kong |"
        qh3 = "HQ: Who was the 44th president of the United States of Amercia?  /n
        | A: Jimmy Carter | B: Bill Clinton | C: Barack Obama | D: Joe Biden |"
        qh4 = "HQ: Who invented the World Wide Web? /n
        | A: Tim Berners-Lee | B: Bill Gates | C: Tim Wozniak | D: Dr Tim Wu | "
        qh5 = "HQ: What is the meaning of life? /n
        | A: Find Dave | B: 42 | C: Work before Life | D: Get Rich | "

        # Create a Questions array object with an array of new Question objects initiated each with question and answer 
        @Questions = [Question.new(qh1, "b"), Question.new(qh2, "a"), Question.new(qh3, "c"), Question.new(qh4, "a"), Question.new(qh5, "b")]
    end
end

class EasyQuiz < Quiz
    def get_question()
        # Set Questions
        eq1 = "EQ: How many alphabets in the English language? /n
        | A: More than 10 | B: 62 | C: 26 | D: 20 |"
        eq2 = "EQ: In the solar system, where is Earth placed from the Sun? /n
        | A: 2nd | B: 5th | C: 4th | D: 3rd |"
        eq3 = "EQ: Which of the below are not examples of social media?  /n
        | A: Snapchat | B: Email | C: Twitter | D: Facebook |"
        eq4 = "EQ: What is the first name of the British Monarch? /n
        | A: Kate | B: Elizabeth | C: Mary | D: Windsor | "
        eq5 = "EQ: Which of the below is not a state or territory of Australia? /n
        | A: New Zealand | B: Queensland | C: Tasmania | D: ACT | "
        
        # Create a Questions array object with an array of new Question objects initiated each with question and answer 
        @Questions = [Question.new(eq1, "c"), Question.new(eq2, "d"), Question.new(eq3, "b"), Question.new(eq4, "b"), Question.new(eq5, "a")]
    end        
end
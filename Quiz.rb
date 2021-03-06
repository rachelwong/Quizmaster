require_relative 'Question'

class Quiz
    attr_reader :Questions_list

    # Create a Quiz object called Questions_list
    def initialize 
        @Questions_list = []
    end
end

# Create a Hard-level of the Quiz object
class HardQuiz < Quiz 
    def get_questions()
        # Set Questions
        qh1 = "HQ 1: What is the capital of Australia? \n
        | A: Hong Kong | B: Sydney | C: Brisbane | D: Canberra |"
        qh2 = "HQ 2: Which city has the higher standard of living? \n
        | A: New York City | B: Sydney | C: Tokyo | D: Hong Kong |"
        qh3 = "HQ 3: Who was the 44th president of the United States of Amercia?  \n
        | A: Jimmy Carter | B: Bill Clinton | C: Barack Obama | D: Joe Biden |"
        qh4 = "HQ 4: Who invented the World Wide Web? \n
        | A: Tim Berners-Lee | B: Bill Gates | C: Tim Wozniak | D: Dr Tim Wu | "
        qh5 = "HQ 5: What is the meaning of life? \n
        | A: Find Dave | B: 42 | C: Work before Life | D: Get Rich | "

        # Create a Questions array object with an array of new Question objects initiated each with question and answer 
        @Questions_list = [
            Question.new(qh1, "D"), 
            Question.new(qh2, "A"), 
            Question.new(qh3, "C"), 
            Question.new(qh4, "A"), 
            Question.new(qh5, "B")]
    end
end

# Create an Easy version of the Quiz object  
class EasyQuiz < Quiz
    def get_questions()
        # Set Questions
        eq1 = "EQ 1: How many alphabets in the English language? \n
        | A: More than 10 | B: 62 | C: 26 | D: 20 |"
        eq2 = "EQ 2: In the solar system, where is Earth placed from the Sun? \n
        | A: 2nd | B: 5th | C: 4th | D: 3rd |"
        eq3 = "EQ 3: Which of the below are not examples of social media?  \n
        | A: Snapchat | B: Email | C: Twitter | D: Facebook |"
        eq4 = "EQ 4: What is the first name of the British Monarch? \n
        | A: Kate | B: Elizabeth | C: Mary | D: Windsor | "
        eq5 = "EQ 5: Which of the below is not a state or territory of Australia? \n
        | A: New Zealand | B: Queensland | C: Tasmania | D: ACT | "
        
        # Create a Questions array object with an array of new Question objects initiated each with question and correct answer 
        @Questions_list = [
            Question.new(eq1, "C"), 
            Question.new(eq2, "D"), 
            Question.new(eq3, "B"), 
            Question.new(eq4, "B"), 
            Question.new(eq5, "A")]
    end        
end

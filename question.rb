class Question
    attr_accessor :question
    attr_accessor :correct_answer
    def initialize(question, correct_answer)
        @question = question
        @correct_ans = correct_answer
    end
end
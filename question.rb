class Question
    attr_accessor :question
    attr_accessor :correct_answer

    def initialize(query, correct_answer)
        @query = query
        @correct_ans = correct_answer
    end
end
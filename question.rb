class Question
    attr_accessor :query
    attr_accessor :correct_answer

    def initialize(query, correct_answer)
        @query = query
        @correct_ans = correct_answer
    end
end
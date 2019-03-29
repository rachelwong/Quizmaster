class Question
    attr_accessor :query
    attr_accessor :correct_ans

    def initialize(query, correct_answer)
        @query = query
        @correct_ans = correct_answer
    end
end

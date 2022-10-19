class Card
    attr_accessor :face_up, :face_down, :mark

    def initialize(mark)
        @face_up = false
        @face_down = true
        @mark = mark
    end

    def reveal(mark)
        @face_down = false
        @face_up = true
        p @mark
    end

    def hide(mark)
        @face_down = true
        @face_up = false
        p " "
    end

    # def to_s(mark)
    #     mark.to_s
    # end

    def ==(mark)
        self.mark == mark
    end

    # hello world add . asdflkjhasjkldsdfbsdfgsdf

end
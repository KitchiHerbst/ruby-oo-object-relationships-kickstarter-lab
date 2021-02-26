

class Project

    attr_reader :title

    @@all = []

    def initialize(title)
        @title=title
        @@all<<self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)

    end
    
    def b
        ProjectBacker.all.select {|var| var.project == self}
    end
    
    def backers
        b.map {|var| var.backer}
    end
end
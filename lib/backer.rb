



class Backer

    attr_reader :name

    @@all = []

    def initialize(name)
        @name=name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def bp
        ProjectBacker.all.select {|var| var.backer == self}
    end
    
    def backed_projects
        bp.map {|var| var.project}
    end
end
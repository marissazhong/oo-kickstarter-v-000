class Backer
  attr_accessor :name, :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  def back_project(project)
    @backed_projects << project
    #Project.add_backer(self)
  end
  def backed_projects=(projects)
    @backed_projects
  end
end



backer = Backer.new("Avi")
spencer = Backer.new("Spencer")
magic = Project.new("Magic The Gathering Thing")
puts spencer.back_project(magic)

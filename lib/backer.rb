class Backer
  attr_accessor :name, :projects
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  def back_project(project)
    @backed_projects << project
    Project.add_backer(self)
  end
  def backed_projects
    @backed_projects
  end
end


backer = Backer.new("Avi")
backer.name

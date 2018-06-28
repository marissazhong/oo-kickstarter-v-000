class Backer
  attr_accessor :name, :projects
  def initialize(name)
    @name = name
    @projects = []
  end
  def back_project(project)
    @projects << project
    Project.add_backer(self) << self
  end
  def backed_projects
    @projects
  end
end

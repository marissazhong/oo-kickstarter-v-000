class Backer
  attr_accessor :name, :projects
  def initialize(name)
    @name = name
    @projects = []
  end
  def self.back_project(project)
    @projects << project
    self
  end
  def backed_projects
    @projects
  end
end

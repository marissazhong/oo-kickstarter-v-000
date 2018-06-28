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

class Project
  attr_accessor :title, :backers
  def initialize(project_name)
    @title = project_name
    @backers = []
  end
  def backers
    @backers
  end
  def self.add_backer(backer)
    new_backer = Backer.new(backer)
    @backers << new_backer
  end
end

backer = Backer.new("Avi")
spencer = Backer.new("Spencer")
magic = Project.new("Magic The Gathering Thing")

spencer.back_project(magic)

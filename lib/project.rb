class Project
  attr_accessor :title, :backers

  def initialize(project_name)
    @title = project_name
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    Backer.backed_projects << self
  end

  def backers
    @backers
  end

end

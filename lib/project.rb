class Project
  attr_accessor :project_name, :backers

  def initialize(project_name)
    @project_name = project_name
    @backers = []
  end

  def backers
    @backers
  end

end

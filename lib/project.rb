class Project
  attr_accessor :title, :backers

  def initialize(project_name)
    @title = project_name
    @backers = []
  end

  def self.add_backer(backer)
    @backers << backer
  end

  def backers
    @backers
  end

end

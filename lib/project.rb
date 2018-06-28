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
    backer = Backer.new(backer)
    backers << backer
  end



end

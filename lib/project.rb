class Project
  attr :backers, :title
  
  def initialize(title)
    @backers = []
    @title = title
  end
  
  def add_backer(backer)
    @backers << backer
    backer.back_project(self) unless backer.projects.include?(self)
  end
end
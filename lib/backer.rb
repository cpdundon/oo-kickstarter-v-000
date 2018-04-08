class Backer
  attr :backed_projects, :name
  
  def initialize(name)
    @backed_projects = []
    @name = name
  end
  
  def back_project(proj)
    @backed_projects << proj
    proj.add_backer(self) unless proj.backers.include?(self)
  end
    
end
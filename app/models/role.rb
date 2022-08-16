class Role < ActiveRecord::Base
  has_many :auditions

  # def auditions
  #   self.auditions
  # end

  def actors
    self.auditions.pluck(:actor)
  end

  def locations
    self.auditions.pluck(:location)
  end

  def lead
    
  end


end
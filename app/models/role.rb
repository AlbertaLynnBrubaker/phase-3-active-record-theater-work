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
    hired_audition = self.auditions.select{|a| a.hired}.first
    hired_audition ? hired_audition : "No actor has been hired for this role."
    
  end

  def understudy
    hired_audition = self.auditions.select{|a| a.hired}.second
    hired_audition ? hired_audition : "No actor has been hired for understudy for this role."
  end 

end
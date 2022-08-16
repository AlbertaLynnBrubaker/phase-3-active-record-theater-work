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
    if(hired_audition)
      hired_audition
    else
      "No actor has been hired for this role."
    end
  end

  def understudy
    hired_audition = self.auditions.select{|a| a.hired}.second
    if(hired_audition)
      hired_audition
    else
      "No actor has been hired for understudy for this role."
    end
  end

  

end
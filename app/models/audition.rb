class Audition < ActiveRecord::Base
  belongs_to :role

  def call_back
    self.hired = true
    self.save
  end

  def fire_them
    self.hired = false
    self.save
  end
end

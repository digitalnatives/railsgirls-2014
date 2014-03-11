class Idea < ActiveRecord::Base
  attr_accessible :description, :title

  belongs_to :user

  def created_by?(user)
    self.user == user
  end

end

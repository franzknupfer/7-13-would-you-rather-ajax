class Question < ActiveRecord::Base

  validates :title, :presence => true
  validates :option1, :presence => true
  validates :option2, :presence => true
  validates :description, :presence => true

  belongs_to :user
  has_many :votes
end

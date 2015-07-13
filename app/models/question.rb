class Question < ActiveRecord::Base
  belongs_to :user
  validates :title, :presence => true
  validates :option1, :presence => true
  validates :option2, :presence => true
  validates :description, :presence => true

  has_many :votes
end

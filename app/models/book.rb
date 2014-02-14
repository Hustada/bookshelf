class Book < ActiveRecord::Base
  attr_accessible :thoughts, :title
  has_many :comments
  belongs_to :user
end

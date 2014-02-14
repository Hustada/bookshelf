class Comment < ActiveRecord::Base
  attr_accessible :author, :text, :text
  belongs_to :book
  belongs_to :user
end

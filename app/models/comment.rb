class Comment < ActiveRecord::Base
  attr_accessible :author, :text, :text
  belongs_to :book
end

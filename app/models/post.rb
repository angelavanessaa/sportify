class Post < ActiveRecord::Base
  belongs_to :product
  belongs_to :chatbox
  # has_many :votes
end

class Micropost < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :user_id
  validates :content,length: {maximum: 40}
end

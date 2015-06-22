class AndroidSampleAppUser < ActiveRecord::Base
  attr_accessible :scores, :user_name
  validates :user_name,presence: true
  validates :scores,presence: true
end

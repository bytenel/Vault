class Document < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :user
  scope :recent, lambda { |user| where("created_at <= ? and user_id = ?", Time.zone.now, user.id) }
end

class Document < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :user
  scope :recent, last(10)
end

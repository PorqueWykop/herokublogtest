class Article < ActiveRecord::Base
  attr_accessible :content, :name

  validates :name, :content, :presence => true

  has_many :messages, dependent: :destroy

end

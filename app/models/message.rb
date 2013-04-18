class Message < ActiveRecord::Base
	attr_accessible :article_id, :parent_id, :content

  validates :content, :presence => true

  belongs_to :article

  has_ancestry
  
end

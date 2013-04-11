class Tag < ActiveRecord::Base
	has many :post_tags
	has many :posts :through => :post_tags

end

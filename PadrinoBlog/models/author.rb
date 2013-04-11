class Author < ActiveRecord::Base
	has many :comments
	has many :posts

end

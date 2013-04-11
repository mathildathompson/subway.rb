require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class AuthorTest < Test::Unit::TestCase
  context "Author Model" do

  	setup do
  		@author = Author.new(:name => "John")
  		@author.comment << Comment.new(:body => "bodytext")
  		@author.post << Post.new(:title => "MathildaBlog", :body => "NewYork")
  		@author.save
  	end

    should 'construct new instance' do
    	assert @author.respond.to?(:posts)
    	assert_not_nil @author.posts
     end

    should 'construct new instance' do
    	assert @author.respond.to?(:comments)
    	assert_not_nil @author.comment
     end


  end
end

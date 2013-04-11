require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class PostTest < Test::Unit::TestCase
  context "Post Model" do

  	setup do
  		@post = Post.new(:title => "MathildaBlog", :author => Author.new(:name => "John"))
  		@tag = Tag.new(:name => "like")
  		@post.post_tag << PostTag.new(:tag => @tags, :post => @posts)
  		@post.comment << Comment.new(:body => "like")
  	@post.save
  	end

    should 'construct new instance' do
    	assert @post.respond_to?(:comments)
    	assert_not_nil @post.comment
    	assert @post.comment.is_a?(Array)
    	assert_equal 1, @post.comment.length
    	assert_equal "like", @post.comment.first.body
     end

    should 'respond to author' do
    	assert @post.respond_to?(:authors)
    	assert_not_nil @post.author
    	assert @post.author.is_a? (Author)
    end

    should 'construct new instance' do
    	assert@post.respond_to?(:post_tags)
    	assert_equal 1, @post.post_tag.length
        assert @post.post_tag.is_a?(Array)
        assert @post.post_tag.first.is_a? (PostTag)
    end

    should "have many post" do
      assert @post.respond_to?(:tags)
    end

  	should "have one invoice" do
  		assert @post.respond_to?(:tags)
        assert_not_nil @post.tag
        assert @post.tag.is_a?(Tag)
    end
  end
end


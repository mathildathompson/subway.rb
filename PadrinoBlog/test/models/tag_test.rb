require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class TagTest < Test::Unit::TestCase
  context "Tag Model" do

  	setup do
  		@tag = Tag.new(:name => "like")
        @post = Post.new(:title => "MathildaBlog")

        @tag.post_tag << PostTag.new(:post => @post, :tag => @tag)
    @tag.save
    end

    should 'construct new instance' do
    	assert@tag.respond_to?(:post_tags)
    	assert_equal 1, @tag.post_tag.length
        assert @tag.post_tag.is_a?(Array)
        assert @tag.post_tag.first.is_a? (PostTag)
    end

    should "have many tag" do
      assert @tag.respond_to?(:posts)
      assert_equal 1, @tag.post.length
    end

  	should "have one invoice" do
  		assert @tag.respond_to?(:posts)
        assert_not_nil @tag.post
        assert @tag.post.is_a?(Post)
    end
      
      
      # @tag = Tag.new
      # assert_not_nil @tag
    end
  end
end

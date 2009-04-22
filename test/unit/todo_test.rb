require 'test_helper'

class TodoTest < ActiveSupport::TestCase

  should_validate_presence_of :body
  
  context "A new Todo with no due time" do
    setup do
      @todo = Todo.create!(:body => "Buy Milk")
    end
        
    should "be created as incomplete" do
      assert_equal false, @todo.complete?
    end
    
    should "respond to :overdue?" do
      assert_respond_to(@todo, :overdue?)
    end
    
    should "not be overdue" do
      assert_equal false, @todo.overdue?
    end
  end

  should "be overdue if incomplete and the due time is in the past"
  should "not be overdue in complete"
  should "not be overdue if no due time is set"
end

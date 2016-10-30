require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def setup
    @book1 = Book.new(title: "any book", price: 1200.0)
  end

  test "book valid" do
    assert @book1.valid?
  end

  test 'book title presence' do
    @book1.title = ""
    assert_not @book1.valid?
  end

  test 'book price presence' do
    @book1.price = ""
    assert_not @book1.valid?
  end

  test 'description must <= 10 chars' do
    @book1.description = "a" * 11
    assert_not @book1.valid?
  end
  test 'description must < 10 chars is OK' do
    @book1.description = "a213dfsdf"
    assert @book1.valid?
  end

end

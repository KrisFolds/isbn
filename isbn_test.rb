require "minitest/autorun"
require_relative "practice2.rb"  #You have to change this what is in quotes to the name of your rb files

class TestPractice < Minitest::Test  #The word Addition can be replace with the name of your project

def test_assert_that_isbn_equals_valid
	assert_equal(1,1)
end

def test_assert_that_0451207166_is_a_valid_ISBN
	assert_equal("true", Valid_ten_digit("0451207166"))
end

def test_assert_that_9780451207166_is_a_valid_ISBN
	assert_equal("true", Valid_thirteen_digit("9780451207166"))
end

end
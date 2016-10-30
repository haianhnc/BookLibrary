require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @subject1 = Subject.new(name: "Em cung chi la con gai thoi")
  end

  test 'valid format name' do
    valid_subject = %w[aCow aMewtwo aBubashap aChemadia aPigotta]
    valid_subject.each do |sb|
      @subject1.name = sb
      assert @subject1.valid?
    end
  end
  # test 'not correct format name' do
  #   @subject1.name = "b52"
  #   assert_not @subject1.valid?
  # end

  test 'subject nill' do
    @subject1.name = ""
    assert_not @subject1.valid?
  end

  test 'subject must be unique' do
    duplicate = @subject1.dup
    @subject1.save
    assert_not duplicate.valid?
  end

end

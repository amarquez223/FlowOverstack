# == Schema Information
#
# Table name: qcomments
#
#  id          :integer          not null, primary key
#  qcomment    :text
#  question_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class QcommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

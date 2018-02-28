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

class Qcomment < ApplicationRecord
  belongs_to :question
  belongs_to :user
end

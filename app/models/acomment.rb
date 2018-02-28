# == Schema Information
#
# Table name: acomments
#
#  id         :integer          not null, primary key
#  acomment   :text
#  answer_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Acomment < ApplicationRecord
  belongs_to :answer

  validates :acomment, presence: true
end

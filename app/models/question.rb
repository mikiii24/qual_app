class Question < ApplicationRecord
  with_options presence: true do
    validates :question_title
    validates :question_detail
    validates :qual_id
  end
end

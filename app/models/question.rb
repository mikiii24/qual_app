class Question < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :qual

  with_options presence: true do
    validates :question_title
    validates :question_detail
    validates :qual_id
  end
end

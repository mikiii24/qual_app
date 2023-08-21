class Question < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :qual

  with_options presence: true do
    validates :question_title
    validates :question_detail
  end

  validates :qual_id, numericality: { other_than: 0, message: "can't be blank" }
end

class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :qual

  with_options presence: true do
    validates :question_title
    validates :question_detail
  end

  validates :qual_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end

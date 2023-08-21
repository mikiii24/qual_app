class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions

  with_options presence: true do
    validates :nickname
    validates :name
    validates :name_kana
  end
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  validates :name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
end

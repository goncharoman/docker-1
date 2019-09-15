class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :trackable, :validatable, authentication_keys: [:username]

  mount_uploader :avatar, AvatarUploader

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true

  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
end

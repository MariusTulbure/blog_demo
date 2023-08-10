class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 50 }
  validates :body, presence: true, length: { minimum: 20, maximum: 1000 }
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_noticed_notifications model_name: 'Notification'
  has_many :notifications, through: :user, dependent: :destroy
  # before_commit :ransackable_attributes
  # ransack_alias :all_search, :querry

  # def self.ransackable_attributes(auth_object = nil)
  #   querry = ["body", "title", "user_email", "user_name"]
  # end
end


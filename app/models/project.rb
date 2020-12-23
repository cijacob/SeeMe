class Project < ApplicationRecord
  validates :title, presence: true
  has_many :students, dependent: :destroy
end
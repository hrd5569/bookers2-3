class Book < ApplicationRecord
  
  belongs_to :user
  has_many :favorite, dependent: :destroy
  has_one_attached :image
  
  validates :title,presence:true
  validates :body,presence:true,length:{maximum:200}
end

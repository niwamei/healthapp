class Reservation < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :department

  with_options presence: true do
    validates :department, numericality: { other_than: 1, message: "can't be blank" }
    validates :name
    validates :location
    validates :start
    validates :end
  end
end
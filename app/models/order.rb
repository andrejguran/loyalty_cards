class Order < ActiveRecord::Base
  attr_accessible :user, :customer_id, :status, :address_id
  has_many :order_items, dependent: :destroy
  belongs_to :user, foreign_key: :customer_id
  belongs_to :address

end

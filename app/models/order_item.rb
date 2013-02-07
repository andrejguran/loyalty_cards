class OrderItem < ActiveRecord::Base
  attr_accessible :card_id, :order_id, :quantity
  belongs_to :order
  belongs_to :card

  def subtotal
    quantity * card.price
  end
end

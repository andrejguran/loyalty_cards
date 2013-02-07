module CardsHelper
  def print_price(price)
    number_to_currency(price, :unit => "&euro;", :separator => ",", :delimiter => "", :format => "%n %u")
  end

  def print_stock(stock)
    if stock > 0
      "In stock (#{stock})"
    else
      "Out of stock"
    end
  end
end

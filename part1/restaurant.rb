class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    cost = orders.map do |order|
      order[:rice] * @menu[:rice] + order[:noodles] * @menu[:noodles]
    end
    cost.inject(0) { |sum, n| sum + n }
  end
end

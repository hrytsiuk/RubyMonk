class Restaurant

  attr_reader :menu_rice, :menu_noodles

  def initialize(menu)
    @menu_rice = menu[:rice]
    @menu_noodles = menu[:noodles]
  end

  def cost(*orders)
    cost = orders.map do |order|
      order[:rice] * menu_rice + order[:noodles] * menu_noodles
    end
    cost.inject(0) { |sum, n| sum + n }
  end
end

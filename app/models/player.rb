class Player

  def initialize
    @gold = 2
  end

  def gold
    @gold
  end

  def add_gold(amount)
    @gold += amount.to_i
  end

  def remove_gold(amount)
    @gold -= amount.to_i
    @gold  = 0 if @gold < 0
  end
end

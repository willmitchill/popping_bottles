@total_bottles = 0

@current_bottles = 0
@current_caps = 0



def add_initial_bottles
  @total_bottles += @initial_bottles
  # @current_bottles += @initial_bottles
  # @current_caps += @initial_bottles
end

def new_current_count
  @current_bottles += @initial_bottles
  @current_caps += @initial_bottles
end


def count_redeemables
  (@current_bottles / 2) + (@current_caps / 4)
end


def cash_in_bottles(redeemed)
  @total_bottles += @current_bottles / 2
  @current_bottles = (@current_bottles % 2 + redeemed)
end

def cash_in_caps(redeemed)
  @total_bottles += @current_caps / 4
  @current_caps = (@current_caps % 4 + redeemed)
end


class Roll
  def initialize
    puts "Game ends when I go broke, (zero or less) or when you go broke, (I get to 50 or more)"
    puts "I take 10 if its a draw, house edge baby, if not wager is 1 per roll"
    starburst_money = 25
    @starburst_money = starburst_money
    until @starburst_money < 1 || @starburst_money > 49
      number = rand(1..12)
      @number = number
      puts "higher or lower than #{@number}?"
      answer = gets.chomp
         if answer.downcase == "higher" || answer.downcase == "lower"
           second_roll = rand(1..12)
         if second_roll > @number && answer == "higher"
            puts second_roll
            puts right
            @starburst_money
         elsif second_roll < @number && answer == "higher"
            puts second_roll
            puts wrong
            @starburst_money
         elsif second_roll > @number && answer == "lower"
            puts second_roll
            puts wrong
            @starburst_money
         elsif second_roll < @number && answer == "lower"
            puts second_roll
            puts right
            @starburst_money
         elsif second_roll == @number && answer = "higher" || "lower"
            puts second_roll
            puts draw
          end
          else
            puts "please put higher or lower than #{@number}, Starburst confiscates all your money
            because you can't spell, fucking idiot"
            @starburst_money = 0
            break
         end
       end
     end



  def wrong
    puts "unlucky! you lose!"
    @starburst_money += 1
    "Starburst Money is now at #{@starburst_money}!"
  end

  def right
  puts "well done you won!"
  @starburst_money -= 1
  "Starburst Money is now at #{@starburst_money}!"
  end

  def draw
  puts "Same number, its a draw! King Starburst takes 10 Starburst Money from you"
  @starburst_money += 10
  "Starburst Money is now at #{@starburst_money}!"
  end
end

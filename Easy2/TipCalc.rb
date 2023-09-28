# Tip calculator: user inputs bill amount and the tip percentage, output the tip amount and total bill.

LETTERS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def get_bill
  bill = ''
  loop do
    puts "How much is the bill?"
    bill = gets.chomp
    if LETTERS.intersect?(bill.split(''))
      puts "That doesn't seem like a normal bill amount..."
    else
      break
    end
  end
  bill.to_f
end

def get_tip_amount
  tip = ''
  loop do
    puts "What percentage do you want to tip?"
    tip = gets.chomp
    if LETTERS.intersect?(tip.split(''))
      puts "That doesn't seem like a normal tip amount..."
    else
      break
    end
  end
  tip.to_f
end

def calc_bill(bill, tip)
  tip_amount = bill * (tip / 100)
  total_bill = bill + tip_amount
  puts "For a $#{sprintf('%.2f', bill)} bill and a #{sprintf('%.2f', tip)}% tip:"
  puts "Tip: $#{sprintf('%.2f', tip_amount)}"
  puts "Total: $#{sprintf('%.2f', total_bill)}"
end

bill = get_bill
tip = get_tip_amount
calc_bill(bill, tip)

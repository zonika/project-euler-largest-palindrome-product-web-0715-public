class LargestPalindromeProduct
  def answer
    prod = []
    (100..999).to_a.reverse.each do |n|
      (100..999).to_a.reverse.each do |m|
        if palindrome?(n*m)
          prod << n*m
        end
      end
    end
    prod.max
  end

  def palindrome?(n)
    n = n.to_s.split('')
    if n.length%2==0
      n[0...n.length/2] == n[n.length/2...n.length].reverse
    else
      n[0...n.length/2] == n[n.length/2+1...n.length].reverse
    end
  end
end

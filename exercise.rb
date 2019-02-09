class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method    
    arr = str.split(" ")
    m = []
    for i in arr.each
	has_punctuation = /\W/.match(i)
	starts_with_capital = /^[A-Z]/.match(i)
	is_long = i.length > 5
        # Match long words with capital and punctuation
        if is_long && has_punctuation && starts_with_capital
                word = "Marklar"
                m << [ word, has_punctuation ].join
	# Match long words with punctuation
	elsif is_long && has_punctuation
		word = "marklar"
                m << [ word, has_punctuation ].join
        # Match short words with punctuation
        elsif has_punctuation 
                word = /\w*/.match(i)
                m << [ word, has_punctuation ].join
        # Match long words with capital
        elsif i.length > 4 && /^[A-Z]/.match(i)
                m << "Marklar"
	# Match all other long words
        elsif i.length > 4
                m << "marklar"
	# Anything else remains as is
        else
                m << i
        end
    end
    return m.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    # All Fibonacci sequences start like so
    sequence = [ 1, 1 ]
    # We have completed the first 2 terms
    term = 2
    # Our sum shall start at 0
    sum = 0
    while term < nth do
    	term +=1
        sequence << sequence.at(-1) + sequence.at(-2)
    end
    for i in sequence.each
        if i.even?
                sum += i
        end
    end
    return sum
  end

end

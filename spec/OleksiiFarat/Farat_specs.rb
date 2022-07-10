require "prime"
include Math

class Rainfall
  def initialize(town, strng)
    @data = parse_data(town, strng)
  end
  
  def mean
    avg(@data)
  end

  def variance
    avg(@data.map {|n| (n - mean) ** 2 })
  end
  
  private
  def avg(arr)
    arr.reduce(:+) / arr.length rescue -1
  end
  
  def parse_data(town, strng)
    match = strng.match(/#{town}:Jan (.*)/)
    match.nil? ? [] : match[1].split(/,\w+\s/).map(&:to_f)
  end
end

class KatasContainer
    attr_accessor :listkats
  
    def initialize
      @listkats= "List of all kats"
    end
   def count_positives_sum_negatives(lst)
     return [] if lst.empty?
     lst.each_with_object([0,0]) do |n,a|
     a[0] += 1 if n > 0
     a[1] += n if n < 0
	 end
   end
   def string_to_number(s)
     s.to_i
   end
   def locker_run lockers
     (1..sqrt(lockers)).map{ |n| n ** 2 }
   end
   def mean(town, strng)
     Rainfall.new(town, strng).mean
   end
   def variance(town, strng)
     Rainfall.new(town, strng).variance
   end
   def gap(g, m, n)
     (m..n).each do |n|
     next unless n.prime?
     return [n, n + g] if (n + g).prime? && (n+1...n+g).none?(&:prime?)
     end
    nil
  end
end
  
  
  RSpec.describe 'Class as container of testing kats' do
    before do
      @katas = KatasContainer.new
    end
  
    context 'Eighth katas'  do
     # TODO: Given an array of integers.
     #       Return an array, where the first element is the count of positives numbers
	 #       and the second element is sum of negative numbers. 0 is neither positive nor negative.
     #       If the input is an empty array or is null, return an empty array. 

	    
			  checkout=[
                 {[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]=>[10,-65]},
                 {[0, 2, 3, 0, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14]=>[8,-50]},
                 {[1]=>[1,0]},
                 {[-1]=>[0,-1]},
                 {[0,0,0,0,0,0,0,0,0]=>[0,0]},
                 {[]=>[]},
			     {[0, 2, 5, 6, 7, 8, 9, 10, -11, -12, -14]=>[110,-70]}
			           ]
		     checkout.each do |a| 	
		       it 'Testing eighth kata number 1' do
			     puts "Input : #{a.keys.first} => Output: #{a.values.first}"
                 expect(@katas.count_positives_sum_negatives(a.keys.first)).to eq(a.values.first)
               end
             end
		   
	 #TODO: We need a function that can transform a string into a number.
     #      What ways of achieving this do you know?	   
        
	         checkout=[
                 {"1234"=>1234},
                 {"605"=>605},
                 {"-7"=> -7},
				 {"-17"=> -7}
				      ]
             checkout.each do |a| 
			   it 'Testing eighth kata number 2' do
			     puts "Input : #{a.keys.first} => Output: #{a.values.first}"
			     expect(@katas.string_to_number(a.keys.first)).to be == a.values.first
			   end 
             end
    end
  
    context 'Seventh kata' do
	#TODO:  Johnny is a boy who likes to open and close lockers.
    #       He loves it so much that one day, when school was out, he snuck in just to play with the lockers.
    #       Each locker can either be open or closed. If a locker is closed when Johnny gets to it, he opens it, and vice versa.
    #       The lockers are numbered sequentially, starting at 1.
	#       He continues this until he has finished running past the last locker
    #       (i.e. when the number of lockers he skips is greater than the number of lockers he has).
        	   
	             checkout=[
                 {1=>[1]},
                 {10=>[1,4,9]},
                 {50=>[1,4,9,16,25,36,49]},
                 {100=>[1,4,9,16,25,36,49,64,81,100]},
                 {500=>[1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484]},
				 {170=>[1,4,9,16,25,36,49,64]}
                   ]
       	     checkout.each do |a|   
			   it 'Testing seventh kata' do  
			     puts "Input : #{a.keys.first} => Output: #{a.values.first}" 
                 expect(@katas.locker_run(a.keys.first)).to eq a.values.first
		       end
            end
    end
  
    context 'Sixth kata' do
	#TODO:  data and data1 are two strings with rainfall records of a few cities for months from January to December.
    #   	The records of towns are separated by \n. 
	#       Function: mean(town, strng) should return the average of rainfall 
	#       for the city town and the strng data or data1 
    #       Function: variance(town, strng) should return the variance of rainfall
	#       for the city town and the strng data or data1.
        
        data = 
     "Rome:Jan 81.2,Feb 63.2,Mar 70.3,Apr 55.7,May 53.0,Jun 36.4,Jul 17.5,Aug 27.5,Sep 60.9,Oct 117.7,Nov 111.0,Dec 97.9" + "\n" +
     "London:Jan 48.0,Feb 38.9,Mar 39.9,Apr 42.2,May 47.3,Jun 52.1,Jul 59.5,Aug 57.2,Sep 55.4,Oct 62.0,Nov 59.0,Dec 52.9" + "\n" +
     "Paris:Jan 182.3,Feb 120.6,Mar 158.1,Apr 204.9,May 323.1,Jun 300.5,Jul 236.8,Aug 192.9,Sep 66.3,Oct 63.3,Nov 83.2,Dec 154.7" + "\n" +
     "NY:Jan 108.7,Feb 101.8,Mar 131.9,Apr 93.5,May 98.8,Jun 93.6,Jul 102.2,Aug 131.8,Sep 92.0,Oct 82.3,Nov 107.8,Dec 94.2" + "\n" +
     "Vancouver:Jan 145.7,Feb 121.4,Mar 102.3,Apr 69.2,May 55.8,Jun 47.1,Jul 31.3,Aug 37.0,Sep 59.6,Oct 116.3,Nov 154.6,Dec 171.5" + "\n" +
     "Sydney:Jan 103.4,Feb 111.0,Mar 131.3,Apr 129.7,May 123.0,Jun 129.2,Jul 102.8,Aug 80.3,Sep 69.3,Oct 82.6,Nov 81.4,Dec 78.2" + "\n" +
     "Bangkok:Jan 10.6,Feb 28.2,Mar 30.7,Apr 71.8,May 189.4,Jun 151.7,Jul 158.2,Aug 187.0,Sep 319.9,Oct 230.8,Nov 57.3,Dec 9.4" + "\n" +
     "Tokyo:Jan 49.9,Feb 71.5,Mar 106.4,Apr 129.2,May 144.0,Jun 176.0,Jul 135.6,Aug 148.5,Sep 216.4,Oct 194.1,Nov 95.6,Dec 54.4" + "\n" +
     "Beijing:Jan 3.9,Feb 4.7,Mar 8.2,Apr 18.4,May 33.0,Jun 78.1,Jul 224.3,Aug 170.0,Sep 58.4,Oct 18.0,Nov 9.3,Dec 2.7" + "\n" +
     "Lima:Jan 1.2,Feb 0.9,Mar 0.7,Apr 0.4,May 0.6,Jun 1.8,Jul 4.4,Aug 3.1,Sep 3.3,Oct 1.7,Nov 0.5,Dec 0.7"
       data1 =
     "Rome:Jan 90.2,Feb 73.2,Mar 80.3,Apr 55.7,May 53.0,Jun 36.4,Jul 17.5,Aug 27.5,Sep 60.9,Oct 147.7,Nov 121.0,Dec 97.9" + "\n" +
     "London:Jan 58.0,Feb 38.9,Mar 49.9,Apr 42.2,May 67.3,Jun 52.1,Jul 59.5,Aug 77.2,Sep 55.4,Oct 62.0,Nov 69.0,Dec 52.9" + "\n" +
     "Paris:Jan 182.3,Feb 120.6,Mar 188.1,Apr 204.9,May 323.1,Jun 350.5,Jul 336.8,Aug 192.9,Sep 66.3,Oct 63.3,Nov 83.2,Dec 154.7" + "\n" +
     "NY:Jan 128.7,Feb 121.8,Mar 151.9,Apr 93.5,May 98.8,Jun 93.6,Jul 142.2,Aug 131.8,Sep 92.0,Oct 82.3,Nov 107.8,Dec 94.2" + "\n" +
     "Vancouver:Jan 155.7,Feb 121.4,Mar 132.3,Apr 69.2,May 85.8,Jun 47.1,Jul 31.3,Aug 37.0,Sep 69.6,Oct 116.3,Nov 154.6,Dec 171.5" + "\n" +
     "Sydney:Jan 123.4,Feb 111.0,Mar 151.3,Apr 129.7,May 123.0,Jun 159.2,Jul 102.8,Aug 90.3,Sep 69.3,Oct 82.6,Nov 81.4,Dec 78.2" + "\n" +
     "Bangkok:Jan 20.6,Feb 28.2,Mar 40.7,Apr 81.8,May 189.4,Jun 151.7,Jul 198.2,Aug 197.0,Sep 319.9,Oct 230.8,Nov 57.3,Dec 9.4" + "\n" +
     "Tokyo:Jan 59.9,Feb 81.5,Mar 106.4,Apr 139.2,May 144.0,Jun 186.0,Jul 155.6,Aug 148.5,Sep 216.4,Oct 194.1,Nov 95.6,Dec 54.4" + "\n" +
     "Beijing:Jan 13.9,Feb 14.7,Mar 18.2,Apr 18.4,May 43.0,Jun 88.1,Jul 224.3,Aug 170.0,Sep 58.4,Oct 38.0,Nov 19.3,Dec 2.7" + "\n" +
     "Lima:Jan 11.2,Feb 10.9,Mar 10.7,Apr 10.4,May 10.6,Jun 11.8,Jul 14.4,Aug 13.1,Sep 23.3,Oct 1.7,Nov 0.5,Dec 10.7"
        towns = ["Rome", "London", "Paris", "NY", "Vancouver", "Sydney", "Bangkok", "Tokyo",
          "Beijing", "Lima", "Montevideo", "Caracas", "Madrid", "Berlin"]
		  
        checkout=[		  
		       {"London"=>51.199999999999996},
               {"Beijing"=>52.416666666666664},
			   {"Bangkok"=>50.476666666666664}
		          ]
	         checkout.each do |a| 
		       it 'Testing sixth kata' do
			     puts "Input for mean : #{a.keys.first} => Output: #{a.values.first}"  
		         expect(@katas.mean(a.keys.first,data)).to eq(a.values.first)
		       end
			 end  
		checkout=[		  
		       {"London"=>110.90055555555556},
			   {"Beijing"=>4437.038055555556},		
               {"Bangkok"=>6150.876666666666664}
                  ]
		     checkout.each do |a|
			   it 'Testing sixth kata' do
			     puts "Input for variance: #{a.keys.first} => Output: #{a.values.first}"  
		         expect(@katas.variance(a.keys.first,data1)).to eq(a.values.first)
		       end
	         end
    end

    context 'Fifth kata' do
	#TODO:  The prime numbers are not regularly spaced. For example from 2 to 3 the gap is 1. From 3 to 5 the gap is 2.
    #       From 7 to 11 it is 4. Between 2 and 50 we have the following pairs of 2-gaps primes: 3-5, 5-7, 11-13, 17-19, 29-31, 41-43
	#       We will write a function gap with parameters:
    #       g (integer >= 2) which indicates the gap we are looking for
    #       m (integer > 2) which gives the start of the search (m inclusive)
    #       n (integer >= m) which gives the end of the search (n inclusive)
	      
		  checkout=[
		  		  {[2,100,110]=>[101, 103]},
                  {[4,100,110]=>[103, 107]},
                  {[6,100,110]=>nil},
                  {[8,300,400]=>[359, 367]},
                  {[10,300,400]=>[337, 347]},
				  {[15,500,700]=>[548, 699]}
                   ]  
             checkout.each do |a| 
               it 'Testing fifth kata' do 
            	 puts "Input : #{a.keys.first} => Output: #{a.values.first}"  	   
                 expect(@katas.gap(a.keys[0][0],a.keys[0][1],a.keys[0][2])).to be == a.values.first
		       end 
             end
    end 
  end
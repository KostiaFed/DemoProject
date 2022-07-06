# Consider the sequence U(n, x) = x + 2x**2 + 3x**3 + .. + nx**n where x is 
# a real number and n a positive integer.
# When n goes to infinity and x has a correct value (ie x is in its domain of
# convergence D), U(n, x) goes to a finite limit m depending on x.
# Usually given x we try to find m. Here we will try to find x (x real, 0 < x < 1) 
# when m is given (m real, m > 0).
# Let us call solve the function solve(m) 
# which returns x such as U(n, x) goes to m when n goes to infinity.


def solve(m)
    return 1 + (0.5 - Math.sqrt(0.25 + m)) / m       
end

def assert_fuzzy(m, expect)
    # max error
    merr = 1e-12
    print("Testing %.2f \n" % [m])
    actual = solve(m)
    print("abs(actual - expected): ", (actual - expect).abs(), "\n")
    inrange = (actual - expect).abs() <= merr
    if inrange == false then
        print("Expected value near %.12e but got %.12e \n" % [expect, actual])
    end
    print("#\n")
    Test.expect(inrange, "Error in solve")
end


describe "Which x for that sum" do
    it "solve" do
          expect(assert_fuzzy(2.00)).to eql(5.000000000000e-01)
    end
  end
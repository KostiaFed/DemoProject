#Way to check exam results

#arr1 - array of correct answers
#arr2 - array of student answers
#points - value to calculate student points
def check_exam(arr1, arr2)
  points = 0
  arr1.length.times do |i|
  points = if arr1[i] == arr2[i]
              points + 4 #4 points for correct answer
          elsif arr2[i] == ''
              points + 0 #0 points if is no answer
          else
              points - 1 #penalty for incorrect answer
          end
        end

          if points < 0 #If we have number less than 0 we return 0
             0
          else
             points
          end
end

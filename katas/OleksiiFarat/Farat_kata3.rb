def locker_run(lockers)
  (1..sqrt(lockers)).map { |n| n**2 }
end

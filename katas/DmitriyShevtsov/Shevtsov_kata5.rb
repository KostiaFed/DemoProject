def increment_string(input)
  if input.match(/\d$/)
    if input.match(/([a-z]+)([0]+)(\d+)/)
    x = input.match(/([a-z]+)([0]+)(\d+)/).captures
    l = x[-1].length
    x[-1] = (x[-1].to_i + 1).to_s
      if x[-1].length == l + 1
        x[-2] = x[-2].chars.pop
        end
    x.join
      elsif input.match(/([a-z]+)(\d+)/)
    x = input.match(/([a-z]+)(\d+)/).captures
    x[-1] = (x[-1].to_i + 1).to_s
    x.join
      elsif input.match(/([0]+)(\d+)/)
        x = input.match(/([0]+)(\d+)/).captures
        l = x[-1].length
        x[-1] = (x[-1].to_i + 1).to_s
         if x[-1].length == l + 1
            x[-2] = x[-2].chars.pop
           x.join
      end
      elsif input.match(/(\d+)/)
    (input.to_i + 1).to_s
      end
  else
    input + "1"
  end
end

!class Specs
   Start_path = '../spec'
   def run
     result = ''
     Dir.each_child(Start_path) do |tests|
       next if tests.include?('.rb')

       path = Dir.new(Start_path + "/#{tests}")
       result += "#{tests}:\n"
       specs = ''
       path.each_child { |test| specs += "  -#{test.gsub('.rb', '')}\n" }
       result += specs + "\n"
     end
     result
   end
 end

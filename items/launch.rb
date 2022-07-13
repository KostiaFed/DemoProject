def launch(name_kata='Korkonishko_kata1',*argv)
  return if argv.empty?
res=''
launch_kata=''
user=name_kata.sub(/_[A-z\d]+/i,'')
stp=Dir.pwd

return res << "Name of kata don't respond expected form \n Re-enter correct kata name for execution \n" if user.empty?
return res << "Directory <katas> don't found in current folder \n Launch script again" unless Dir.entries(Dir.pwd).include?("katas") && File.directory?("katas")
Dir.chdir("katas")
  Dir["*"].each do |c|
    if File.directory?(c) && c.downcase.match?(/#{user.downcase}/)
    Dir.chdir(c)
    res="Found user directory \n"
    break
    end
  end

if res.empty? 
return res<<"User <"<<user<< "> directory not found \n Re-enter name of existing kata for this user \n"
end
name_kata+=name_kata.match?(/.rb$/)? "" : ".rb"

   Dir["*"].each do |c|
     if File.file?(c) && c.match?(/#{name_kata}/)
     res<<"Output info for: "<<name_kata<<" \n"
     launch_kata='ruby '+name_kata+' '
     break
     end
   end

unless launch_kata.empty?
  argv.each {|x| launch_kata<< (x==nil ? 'nil' : x.to_s)<<" "}
   res << 'Result of execution is: ' << `#{launch_kata.strip!}` << "\n"
else res<<"Not found kata for user: "<<user<<"\n"
end
Dir.chdir(stp)
res<<"Input: "<<"#{argv}"<<"\n"
end
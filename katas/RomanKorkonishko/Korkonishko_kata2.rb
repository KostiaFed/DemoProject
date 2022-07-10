def validate_usr(username)
username.length.between?(4,16)&&username.length ? (""<<username.sub!(/([a-z0-9_])+/,'')).empty? : false
end

username = ARGV[0].downcase=='nil' ? "" : ARGV[0] 

p validate_usr(username)
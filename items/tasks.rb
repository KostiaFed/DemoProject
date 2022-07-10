class Tasks
  def run
    str = ""
    @@files = Dir['./katas/**/*'].map do |f|
      if File.directory? f
        str += File.basename(f) + ':' + "\n"
      elsif File.file? f
        str += '  -' + File.basename(f, '.rb') + "\n"
      end
    end
    str
  end
end

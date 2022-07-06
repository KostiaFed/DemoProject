class Sort
  def prepare_list_of_files
    all_folders = Dir['katas/*/*']
    result_files = []
    all_folders.map do |files|
      result_files << File.basename(files)
    end
    result_files
  end

  def sort(item_list)
    item_list.sort_by { |name| name.scan(/\d+/).first }
  end

  def directory_exists(directory)
    File.directory?(directory)
  end

  def run(args = nil)
    if args.nil?
      puts 'Enter a folder name to sort files:'
      folder_name = gets.chomp.to_s
    else
      folder_name = args
    end
    if directory_exists(folder_name)
      puts 'Sorted files:'
      files = prepare_list_of_files
      sort(files)
    else
      puts 'Folder does not exist! Enter correct folder name'
    end
  end
end

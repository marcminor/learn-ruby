file_name = ARGV[0]

  def count_lines(file_name)
    file = open(file_name)
    count = 0
    while file.gets
      count += 1
    end
    count
  ensure
    file.close if file
  end

  puts count_lines(file_name)
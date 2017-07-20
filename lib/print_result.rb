class PrintResult
  def initialize(score = 0)
    @results = []
    @score = score
  end

  def file_exist?(path)
    File.exist?(path)
  end

  def read_from_file(path)
    if file_exist?(path)
      f = File.new(path, "r:UTF-8")
      @results = f.readlines
      f.close
    else
      raise "Файл не найден"
    end
  end

  def solution
    case @score
      when 30..33
        @results[0]
      when 25..29
        @results[1]
      when 19..24
        @results[2]
      when 14..18
        @results[3]
      when 9..13
        @results[4]
      when 4..8
        @results[5]
      when 0..3
        @results[6]
    end
  end

  def print_answer
    puts "Ваш результат: #{@score}"
    puts solution
  end

end

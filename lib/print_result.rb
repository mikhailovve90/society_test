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
      puts "Файл не найден"
    end
  end

  def print_answer
    if @score >= 30
      puts "Ваш результат: #{@score}"
      puts @results[0]
      elsif @score >= 25
      puts "Ваш результат: #{@score}"
      puts @results[1]
    elsif @score >= 19
      puts "Ваш результат: #{@score}"
      puts @results[2]
    elsif @score >= 14
      puts "Ваш результат: #{@score}"
      puts @results[3]
    elsif @score >= 9
      puts "Ваш результат: #{@score}"
      puts @results[4]
    elsif @score >= 4
      puts "Ваш результат: #{@score}"
      puts @results[5]
    else
      puts "Ваш результат: #{@score}"
      puts @results[6]
    end
  end
end

require 'unicode_utils/downcase'
class Test
  TYPE_ANSWERS = ["да", "нет", "иногда", "1", "2", "3"]

  def initialize
    @questions = []
    @question_number = 0
    @answer = ""
    @score = 0
  end

  def file_exist?(path)
    File.exist?(path)
  end

  def read_from_file(path)
    if file_exist?(path)
      f = File.new(path, "r:UTF-8")
      @questions = f.readlines
      f.close
    else
      raise "Файл не найден"
    end
  end

  def check_size
    @questions.size
  end

  def ask_question
    puts @questions[@question_number]
    @question_number += 1
    if @question_number == check_size
      @question_number = 0
    end
  end

  def consider_score
    if(@answer == "да" || @answer == "1")
      @score += 2
    elsif(@answer == "иногда" || @answer == "3")
      @score += 1
    end
    @answer = ""
  end

  def collect_answer
    while !TYPE_ANSWERS.include?(@answer)
      puts "Введите значение " + TYPE_ANSWERS.join(", ") + " цифры соответственны вариантам."
      @answer = UnicodeUtils.downcase(STDIN.gets.chomp)
    end
    @answer = consider_score
  end

  def score
    score = @score
    @score = 0
    score
  end
end


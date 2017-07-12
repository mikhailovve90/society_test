current_path = File.dirname(__FILE__)

require_relative "#{current_path}/lib/print_result"
require_relative "#{current_path}/lib/test"
puts File.exist?("#{current_path}/data/questions.txt")
society_test = Test.new
society_test.read_from_file("#{current_path}/data/questions.txt")
number = society_test.check_size

number.times do
  society_test.ask_question
  society_test.collect_answer
end

printer = PrintResult.new(society_test.score)
printer.read_from_file("#{current_path}/data/results.txt")
printer.print_answer

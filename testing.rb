current_path = File.dirname(__FILE__)

require_relative "lib/print_result"
require_relative "lib/test"

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

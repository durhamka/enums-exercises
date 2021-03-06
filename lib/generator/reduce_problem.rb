class ReduceProblem
  def self.test_suites
    exercise = Exercise.new(:reduce)

    exercise << Problem.new(
      "sum_a_list_of_numbers",
      {'numbers' => [32, 1, 21, 5, 81, 333]},
      {'sum' => 473},
      "sum + number",
      {:initial_value => 0}
    ).example!

    exercise << Problem.new(
      "subtract_list_of_numbers",
      {'numbers' => [28, 12, 38, 1, 91]},
      {'difference' => -170},
      "difference - number",
      {:initial_value => 0}
    ).loop!

    exercise << Problem.new(
      "multiply_list_of_numbers",
      {'numbers' => [2, 3, 5, 7]},
      {'product' => 210},
      "product * number",
      {:initial_value => 1}
    ).assignment!

    exercise << Problem.new(
      "divide_list_of_numbers",
      {"numbers" => [2, 2, 2, 5, 7]},
      {"quotient" => 2},
      "quotient / number",
      {:initial_value => 560}
    )

    exercise << Problem.new(
      "capitize_keywords",
      {"keywords" => ["fish", "blue"]},
      {"phrase" => "'one FISH two FISH red FISH BLUE FISH'"},
      "phrase.gsub(keyword, keyword.upcase)",
      {:initial_value => "'one fish two fish red fish blue fish'"}
    )

    exercise << Problem.new(
      "add_second_value",
      {"elements" => [['a', 1], ['b', 9], ['c', 21]]},
      {"sum" => 31},
      "sum + element[1]",
      {:initial_value => 0}
    )

    exercise << Problem.new(
      "subtract_smallest_value",
      {"elements" => [[8, 5, 3], [1, 9, 11], [4, 7, 2], [19, 34, 6]]},
      {"difference" => 88},
      "difference - element.min",
      {:initial_value => 100}
    )

    exercise.test_suites
  end
end

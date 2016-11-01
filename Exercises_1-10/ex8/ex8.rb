# create formatter
formatter = "%{first} %{second} %{third} %{fourth}"

# implement formatter with different examples
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}

# calling formatter inside a formatter ends up with 16 percenty things!
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

# spaced out for readability
puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}

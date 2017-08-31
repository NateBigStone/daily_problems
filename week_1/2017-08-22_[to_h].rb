fruits = [
  {"name" => "apple", "color" => "red"},
  {"name" => "banana", "color" => "yellow"},
  {"name" => "grape", "color" => "purple"}
]

fruit_hash = []
fruits.map { |fruit| fruit_hash << [fruit["name"],fruit["color"]]}
fruit_hash = fruit_hash.to_h
p fruit_hash
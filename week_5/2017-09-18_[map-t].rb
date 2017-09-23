sentences = ["hello", "old friend", "today", "mac and cheese"]
new_array = sentences.map{|x| x.split(" ").length > 1 ?  x.capitalize : x }
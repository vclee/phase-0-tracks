breakfast = {
 "eggs" => "uneaten",
 "waffles" => "uneaten",
  "coffee" => "uneaten"
}
breakfast.each do |foods, status|
  puts "yummy, eats #{foods}, now it is not #{status}"
end

actors = [
"Johnny Depp" ,
"Heath Ledger",
"Emma Watson"
]
p actors

actors.map! do |actor|
  "#{actor}" + " what a great actor!"
end
p actors

actors_characters = {
  :Johnny_Depp => "Jack Sparrow",
  :Heath_Ledger => "The Joker",
  :Emma_Watson => "Hermione Granger"
}
actors_characters.each do |actor, character|
  puts "The #{actor} is best known for the roll of #{character}"
end
p actors_characters


nums = [1, 5, 6, 8, 3]
nums_hash = {
  num1: 1,
  num2: 4,
  num3: 5,
  num4: 7,
  num5: 2
}
nums.delete_if { |num| num < 5 }
nums_hash.delete_if { |num, digit| digit < 5 }
p nums_hash
p nums

nums.select! { |num| num < 5 }
nums_hash.select! { |num, digit| digit < 5 }
p nums
p nums_hash

nums.keep_if { |num| num.even? }
nums_hash.keep_if { |num, digit| digit.even? }
p nums
p nums_hash


test_list = [1,2,3,4,5,6,7,8,9,10]
def numbers_condition(test_list)
  test_list.drop_while {|list| list <= 4}
end
p numbers_condition(test_list)

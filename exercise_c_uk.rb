united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.
united_kingdom[1][:capital] = "Cardiff"
p united_kingdom[1][:capital]

# 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).

new_hash = {
  name: "Northern Ireland",
  population: 1_811_000,
  capital: "Belfast"
}

united_kingdom.push(new_hash)
p united_kingdom[3]

# 3. Use a loop to print the names of all the countries in the UK.

 for country in united_kingdom
   p country[:name]
 end


# 4. Use a loop to find the total population of the UK.

def count_population(hash_name)
  uk_pop = 0
  for country in hash_name
    uk_pop += country[:population]
  end
  return uk_pop
end

total_uk_population = count_population(united_kingdom)
p "The total population of the UK is #{total_uk_population}"

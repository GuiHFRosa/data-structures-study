# Em Ruby, um array é uma coleção de objetos, ordenada e indexada numericamente.
# Os arrays em Ruby são objetos mutáveis, o que significa que é possível adicionar, remover e alterar elementos.

my_array = [1, "two", 3, "four", 5.0]

two = my_array[1]

my_array.push("six")
my_array.insert(6, 7)

last_element = my_array.pop()
deleted_element = my_array.delete_at(1)

puts "Digite Seu nome:"
nome = gets.chomp
puts "O seu nome é: " + nome

puts '============================='

puts nome.inspect    

puts '============================='

puts "Digite Seu salario: "
sal = gets.chomp.to_f


puts "Seu salario atualmente é: " + (sal * 1.10).to_s
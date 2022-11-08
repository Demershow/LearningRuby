#IF TERNARIO

sexo = 'macho'

puts (sexo == 'macho' ?  'macho' :  'femea')


#CASE
print 'Digite uma idade ai patrao: '
idade = gets.chomp.to_i

case idade
when 0..2
    puts 'bebe'
when 3..12
    puts 'crianca maloqueira'
when 13..18
    puts 'adolescente chato p cacete'
else 
    puts 'adulto'
end


#UNLESS

print "DIGITE UM NUMERO: "

x = gets.chomp.to_i


unless x > 60
    puts 'x = poco'
else
    puts 'x = muito'
end


#IF

puts "Digite o valor de A: "

a = gets.chomp.to_i

puts "Digite o valor de b: "

b = gets.chomp.to_i


if a > b
    puts "A maior que B"
 
else
    puts "B maior que A"
end    
 

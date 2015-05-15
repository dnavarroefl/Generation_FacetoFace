["cat", "sheep", "bear"].reduce do |memo, word|
memo.length > word.length ? memo : word 
end 

#Equivale a un bucle con 'if' y 'else'.
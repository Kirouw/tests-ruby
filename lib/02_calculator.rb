def add(nb1,nb2)
	return nb1.to_i+nb2.to_i #Addition le nombre 1 et le nombre 2
end

def subtract(nb1,nb2)
	return nb1.to_i-nb2.to_i #Soustrait le nombre 1 et le nombre 2
end

def sum(nbArray)
	if nbArray != [] && nbArray.size > 1 #Si le tableau n'est pas vide et que la taille du tableau est supérieur à 1
			nbArray = nbArray.inject(:+) #On addionne chaques nombres du tableau entre eux grace à la fonction inject qui combine tous les élements en appliquant une opération binaire grace au symbole (:+)
	elsif nbArray != [] && nbArray.count == 1 #Si le tableau n'est pas vide et que le nombre d'entrée dans le tableau est égale = 1 alors 
			nbArray = nbArray.join.to_i #On affiche simplement le nombre entrée dans le parametre en le convertissant en string et on le force à être de class Integer
	else
		nbArray = 0 #Sinon on affiche 0
	end

	return nbArray
end

def multiply(nb1,nb2)
	return nb1.to_i*nb2.to_i #Mutiplie le nombre 1 et le nombre 2
end

def power(nb1,nb2)
	return nb1.to_i**nb2.to_i #Met le nombre 1 à la puissance du le nombre 2
end

def factorial(nb)
	if nb > 0 #si le nombre est supérieur = 0
		nb = nb * factorial(nb-1) #Mutiplies chaques nombbre entre eux 
	else #Sinon le résultat est 1 car 0! = 1 (factoriel de 0 = 1)
		nb = 1
	end

	return nb
end
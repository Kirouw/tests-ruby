def who_is_bigger(a,b,c)
	if a == nil || b == nil || c == nil #Regarde si chaques entrée vos null ou non
		return "nil detected"
	elsif a > b && a > c #Sinon regarde si a est supérieur à b et a est supérieur à c
		return "a is bigger"
	elsif b > a && b > c #Sinon regarde si b est supérieur à a et b est supérieur à c
		return"b is bigger"
	elsif c > a && c > b #Sinon regarde si c est supérieur à a et c est supérieur à a
		return "c is bigger"
	end
end

def reverse_upcase_noLTA(strings)
	return strings.upcase.reverse!.delete("LTA") #Transforme le string en majuscule, puis l'inverse et supprime toute les lettres L T et A
end

def array_42(arrays)
	return arrays.include?(42) #Retour vrai ou faux si le tableau convient 42
end

def magic_array(arrays)
	return arrays.flatten.sort.map{|x|x*2}.delete_if{|x|x%3==0}.uniq #Retirer les tableaux des tableaux, puis tri le tableau, puis mutiplie chaques nombres du tableau par 2, supprime les numéros ou la division par 3 = 1 puis supprimme les doublons
end
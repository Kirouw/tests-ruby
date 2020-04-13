def echo(string)
	return string #Retourne la valeur du parametre
end

def shout(string)
	return string.upcase #Retourne la valeur du parametre en majsucule
end

def repeat(string,*opt) #*param permet d'avoir un parametre optionnel
	if opt.size > 0 #Si la taille du parametre 2 est supérieur à zero
		result = "#{string} "*opt.join.to_i #Retourne le parametre 1 puis le mutiplie par le nombre du parametre 2
		return result.strip #Supprime l'espace du dernier caractère grace à .strip
	else
		result = "#{string} "*2 #Sinon on mutiplie le parametre 1 par 2 (sans utiliser le parametre 2)
		return result.strip #Supprime l'espace du dernier caractère grace à .strip
	end
end

def start_of_word(string,*opt) #*param permet d'avoir un parametre optionnel
	if opt.size > 0 #Si la taille du parametre 2 est supérieur à zero
		if opt.join.to_i <= string.length #Si le parametres 2 est inférieur ou égale à la taille du parametre 1
			return string[0,opt.join.to_i] #Selection les premieres lettre du parametre 1 jusqu'au parametre 2 grace à [0,valeur]
		else
			return "Erreur : Le mot à moins de caractère que le découpage souhaité" #Sinon on renvoie une erreur
		end
	else
		return string[0,1] #Selectionne la premiere lettre du parametre si il n'y a pas de parametre 2 grace à [0,valeur]
	end
end

def first_word(string)
	return string.split.first #Retourne le premiere caractère du string, grace à split qui découpe à partir des espaces et first qui selection le 1er mot
end

print first_word("Hello World")

def titleize(string)
	string = string.split(" ") #transforme le string en tableau, séparé par des espaces
	string[0].capitalize! #transforme le 1er caractère du tableau en majuscule
	string.map!{|n| n.size>3 ? n.capitalize : n}.join(" ") #Cherche chaques mots, si la taille est supérieur à 3, on met en mascule, sinon on affiche le mot seul, puis on transforme le tableau crée en string
end
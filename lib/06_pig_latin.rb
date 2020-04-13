def translate(string)
	vowel = ['a','e','i','o','u']
	two_consonant = ['ch', 'sh', 'qu','th','br']
	three_consonant = ['thr', 'sch', 'squ']
	
	string_array = string.split(' ') #Transformation a chaque espace du string en tableau ("Bonjour monde") = ["Bonjour", "monde"]

	final_string = [] #Création d'un tableau vide pour entrer les résultats

	string_array.each do |w|

		one_caract = w[0] #Selection du premier caractère ("Hello" => "H")
		two_caract = w[0]+w[1] #Selection des 2 premiers caractère ("Hello" => "He")
		three_caract = w[0]+w[1]+w[2] #Selection des 3 premiers caractère ("Hello" => "Hel")

		if vowel.include?(one_caract) #Si le premier caractère contient une voyelle du tableau vowel
			final_string << w+"ay" #On ajout le mot + "ay" à la fin et on ajout au tableau final_string
		else
			if three_consonant.include?(three_caract) #Si les 3 premiers caractères contiennent 3 consonnes inclus dans le tableau three_consonant
				three_first = w.slice!(0,3) #On decoupe le mot pour selectionner les 3 premiers caractères
				final_string << w+three_first+"ay" #On ajout le mot + les 3 premiers caractères + "ay" à la fin et on ajoute au tableau final_string
			elsif two_consonant.include?(two_caract) #Si les 2 premiers caractères contiennent 2 consonnes inclus dans le tableau two_consonant
				two_first = w.slice!(0,2) #On decoupe le mot pour selectionner les 2 premiers caractères
				final_string << w+two_first+"ay" #On ajout le mot + les 2 premiers caractères + "ay" à la fin et on ajoute au tableau final_string
			else #Sinon
				first = w.slice!(0) #On decoupe le mot pour selectionner le premier caractère
				final_string << w+first+"ay" #On ajout le mot + le premier caractère + ay et on ajoute au tableau final_string
			end
		end
	end
	return final_string.join(" ") #On transforme le tableau en string séparer par des espaces (["Cassoulet", "délicieux"] => "Cassoulet délicieux")
end

# - Ajouter ay à chaque fin de mot
# - Si ça commence par une voyelle, on ajout juste "ay"
# - Si un des mots commences par 3 consonnes, on deplaces les consonnes à la fin et ajout "ay"
# - Si un des mots commences par 2 consonnes, on déplace les consonnes à la fin et on ajout "ay"
# - Si un des mots commences par 1 consonne, on déplace la consonne à la fin et on ajout "ay"



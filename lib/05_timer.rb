def time_string(seconds)
	Time.at(seconds).utc.strftime("%H:%M:%S") #Utilise la fonction time pour transformer les secondes en heure
end
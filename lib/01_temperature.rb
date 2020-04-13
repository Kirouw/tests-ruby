def ftoc(nb)
	return (nb.to_f-32)*5/9 #Transforme les Fahrenheit en Celcius grace à une formule mathétimatique (temperature/1.8)
end

def ctof(nb)
	return (nb.to_f*9/5)+32 #Transforme les Celcius en Fahrenheit grace à une formule mathétimatique (temperature*1.8)
end
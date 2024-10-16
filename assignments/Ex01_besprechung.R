## Ex01 First Steps


# Erstelle eine Variable die die Zahl 1650 enthält.

a = 1650

# Erstelle eine Variable die die Zahl 140 enthält.

b <- 140

# Erstelle eine Variable die die Zahl 5 enthält.

d <- 5

# Berechne das Produkt deiner erstellten Variablen.

a + b + d
a * b * d

prod(a, b, d)


# Berechne den Mittelwert deiner erstellten Variablen.

vec = c(a,b,d)

mean(c(a ,b, d))
mean(vec)
# der Mittelwert ist 1650


# Erstelle eine Variable die deinen Vornamen enthält.
vorname = "Marvin"

# Erstelle eine Variable die deinen Nachnamen enthält.
nachname = "Ludwig"


# Die `paste` Funktion kann Texte zusammenfügen. 
# Probiere die Funktion mit den Variablen die deine Namen enthalten aus.

paste(vorname, nachname)






# Vektoren in R sind Folgen von Werten, enthalten also z.B. mehrere Zahlen. 
# Sie werden mit der Funktion `c()` erstellt:

numbers = c(4, 3, 8, 90, 16)
numbers



# Teste die Funktionen `length()`, `sum()`, `sqrt()`, und `min()` mit dem Vektor.
# Kommentiere was die `sqrt()` Funktion macht.


length(numbers)
sum(numbers)
sqrt(numbers)
min(numbers)
#

# Was ist der Unterschied zwischen der `max()` Funktion und der `which.max()` Funktion?

max(numbers)
which.max(numbers)
which.min(numbers)


# Die `seq()` Funktion erzeugt einen Vektor der Zahlenfolgenfolgen enthält. 
# Sieh dir die Hilfeseite von `seq()` an und erstelle einen Vektor der alle
#  100er Zahlen von 0 bis 10000 enthält (also 0, 100, 200, ... ,9900, 10000).


seq(0,10000,100)
seq(from = 0, to = 10000, by = 100)


seq(20)



#
























# Berechne das Produkt deiner erstellten Variablen.
x+y+z
#Erbgebnis: 1795
# Berechne den Mittelwert deiner erstellten Variablen.
mean(x,y,z)
#ergebnis: 1650
#



length(4, 3, 8, 90, 16)
sum(4, 3, 8, 90, 16)
sqrt(4, 3, 8, 90, 16)
min(4, 3, 8, 90, 16)
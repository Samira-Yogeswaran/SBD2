#SBD2

##Exercise 1

###Explorative Datenanalyse (EDA):

###Untersuche den Datensatz loan_sample_4.csv:
###  Schaue dir die Daten an, identifiziere Probleme (z.B. fehlende Werte, Ausreißer).
###  Bereinige die Daten (fehlerhafte oder fehlende Werte beheben) und dokumentiere die Schritte.
install.packages("GGally")

library(GGally)


# Lade den notwendigen Datensatz
data <- read.csv("loan_sample_4.csv")

# Zeige die Anzahl der fehlenden Werte pro Spalte an
missing_values <- colSums(is.na(data))
print(missing_values)

# Optional: Zeige die Zeilen an, die fehlende Werte haben
missing_rows <- data[!complete.cases(data), ]
print(missing_rows)

# Wähle nur numerische Variablen für den Scatterplot aus
numerische_variablen <- data[, sapply(data, is.numeric)]

# Erstelle einen Paarplot
pairs(numerische_variablen, main = "Scatterplot Matrix für alle Variablen")

# Install GGally package if you don't have it already

install.packages("GGally")

# Load necessary libraries
library(GGally)

# Load your dataset (adjust the file path as needed)
df <- read.csv("loan_sample_4.csv")

# Select numerical columns for pair plotting
numerical_columns <- df[, c('loan_amnt', 'int_rate', 'annual_inc', 'dti', 'revol_bal', 'total_acc', 'tot_cur_bal')]

# Generate the pair plot
ggpairs(numerical_columns)


##Exercise 2

###Modellanwendung:
###Verwende den bereinigten Datensatz, um ein Modell zu trainieren, das vorhersagt, ob ein Kredit ausfällt:
###  Wähle ein maschinelles Lernmodell (z.B. logistische Regression).
###  Trainiere das Modell und bewerte die Vorhersageleistung (z.B. durch Genauigkeit).

##Exercise 3

###Verbesserungsideen:
###  Überlege, wie du die Vorhersageleistung des Modells verbessern kannst (z.B. durch zusätzliche Preprocessing-Schritte oder eine Anpassung der Modellparameter).

##Exercise 4

###Praktische Anwendung:
###  Diskutiere, wie das Modell in der Praxis für Kreditentscheidungen verwendet werden könnte.
###  Nenne Chancen (z.B. bessere Kreditbewertung) und Herausforderungen (z.B. Risiko von Fehlentscheidungen) und wie diese bewältigt werden könnten.

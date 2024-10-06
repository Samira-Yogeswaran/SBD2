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

#---------------------
# Installiere ggplot2 und GGally, falls du diese noch nicht installiert hast
# install.packages("ggplot2")
# install.packages("GGally")

# Lade die erforderlichen Bibliotheken
library(ggplot2)
library(GGally)

# Lade deinen Datensatz (passe den Dateipfad entsprechend an)
df <- read.csv("loan_sample_4.csv")

# Wähle die numerischen Spalten aus
numerical_columns <- df[, c('loan_amnt', 'int_rate', 'annual_inc', 'dti', 'revol_bal', 'total_acc', 'tot_cur_bal')]

# Funktion zum Erstellen eines Scatterplots für jedes Paar von Variablen
plot_pairs <- function(df, var1, var2) {
  p <- ggplot(df, aes_string(x = var1, y = var2)) + 
    geom_point(alpha = 0.6) + 
    theme_minimal() + 
    labs(title = paste("Scatterplot of", var1, "vs", var2), x = var1, y = var2)
  print(p)
}

# Schleife, um Scatterplots für jede Paarung von Variablen zu erstellen
var_names <- colnames(numerical_columns)

for (i in 1:(length(var_names) - 1)) {
  for (j in (i + 1):length(var_names)) {
    plot_pairs(numerical_columns, var_names[i], var_names[j])
  }
}


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

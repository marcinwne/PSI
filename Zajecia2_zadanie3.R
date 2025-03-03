install.packages("wordcloud")
library(wordcloud)
install.packages("qdap")
library(qdap)
# Wczytanie danych tekstowych
text_2021 <- readLines(file.choose()) 
text_2024 <- readLines(file.choose())  

frequent_terms <- freq_terms(text_2024)
frequent_terms
frequent_terms <- freq_terms(text_2024, stopwords = Top200Words)
plot(frequent_terms)

frequent_terms1 <- freq_terms(text_2021)
frequent_terms1
frequent_terms1 <- freq_terms(text_2021, stopwords = Top200Words)
plot(frequent_terms1)

wordcloud(frequent_terms$WORD, frequent_terms$FREQ)
wordcloud(frequent_terms1$WORD, frequent_terms1$FREQ)

wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4)
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5)

wordcloud(frequent_terms1$WORD, frequent_terms$FREQ, min.freq = 4)
wordcloud(frequent_terms1$WORD, frequent_terms$FREQ, max.words = 5)

wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(8,"Dark2"))
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5, colors = brewer.pal(8,"Accent"))

wordcloud(frequent_terms1$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(8,"Dark2"))
wordcloud(frequent_terms1$WORD, frequent_terms$FREQ, max.words = 5, colors = brewer.pal(8,"Accent"))

#Widać jest powiązania pomiędzy tymi dwoma przemównieniami, najczęściej przewijają się pochodne słowa ameryka, co jest zroazumiałe dla amerykańskiego prezydenta.
#Drugim powiązaniem jest słowo "future", które można powiązać ze słowami z drugiego przemówienia "act" czy też "plan", wskazują one na wagę przyszłości w przemównienach.

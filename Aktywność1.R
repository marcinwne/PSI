# zadanie 1
kostka <- function(n) {
  rzuty <- sample(1:6, size = n, replace = TRUE)
  return(rzuty)
}

#zadanie 2
zwrot <- function(m) {
  wektor <- 1:m
  return(wektor)
}

#zadanie 3
pole_kola <- function(r) {
  
  powierzchnia <- pi * r^2
  if (r >= 0) {
  return(powierzchnia)
  }
  else 
    return(0)
}

#Zadanie 5

kalkulator <- function(x, y, dzialanie) {
  if (dzialanie == "+") {
    return(x+y)
  }
  else if (dzialanie == "-") {
    return(x - y)
  } 
  else if (dzialanie == "*") {
    return(x * y)
  } 
  else if (dzialanie == "/") {
    if (y == 0) {
      return("Błąd: Nie można dzielić przez zero!")
    } else {
      return(x / y)
    }
  }
}

#Zadanie 6

przyznaj_nagrode <- function() {
  wynik <- kostka(1)
  
  if (wynik == 6) {
    return("Super bonus!")
  } else if (wynik == 4 || wynik == 5) {
    return ("Nagroda standardowa")
  } else {
    return("Brak nagrody")
  }
}

#Zadanie 7

podatek <- function(dochod, rozliczenie) {
  if (rozliczenie == "l" && dochod >=0 ) {
    podatek <- dochod * 0.19
  }
  else if (rozliczenie == "o" && dochod >=0) {
    if (dochod <= 85528) {
      podatek <- dochod * 0.18 - 556
    } else {
      podatek <- 14839 + (dochod - 85528) * 0.32
    }
  }
  return(podatek)
}


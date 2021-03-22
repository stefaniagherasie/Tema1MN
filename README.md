# Tema1MN
[Tema1 Metode Numerice (2018-2019, seria CB)] 


Task 1

Citirea din cele 2 fisiere s-a realizat cu "load", adaugang "format long" pentru fisierul 
cu points pentru a se vedea toate zecimalele.

Task 2

Se afla numarul de puncte continute de points dupa care se obtin NC linii random din points
care apoi sunt distribuite care valorile de inceput ale centroizilor.Cat timp eroarea este
mai mare decat cea dorita se executa algoritmul de recentralizare al centroizilor.
Fiecare punct este atribuit grupului care contine centroidul cel mai apropiat, bazandu-se pe
calcularea distantei euclidiane. La orice pas centroizi obtinuti sunt salvati in centroids_prev
si sunt recalculati de cate ori este nevoie pana cand pozitiile centroizilor nu se mai modifica.

Task 3

Se extrag numarul de centroizi si numarul de puncte. Pentru fiecare punct se calculeaza
distanta euclediana fata de fiecare centroid, afland distanta cea mai mica si atribuind punctul 
grupului corespunzator. Se retine in vectorul color_code numarul grupului din care face parte
fiecare punct.Cu scatter3 se efectueaza graficul, tinand cont ca fiecare grup de centroizi
are o culoare diferita.

Task 4

Se obtin numarul de centroizi, numarul de puncte. Se calculeaza pentru fiecare punct distanta
minina fata de centroizi si se calculeaza costul fiecarui grup prin insumare. La sfarsit, 
costul total este suma tuturor costurilor individuale calculate.

Task 5

Prin apelarea functiilor realizate anterior se obtin punctele, centroizi, costul pentru NC 
aflandu-se in intervalul [1,10] si se salveza costul intr-un vector cluster_cost care se 
reprezinta grafic.


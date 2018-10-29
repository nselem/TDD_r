setwd("~/R/Abraham/")
install.packages("ontologyIndex")
library(ontologyIndex)
ontology <- get_ontology("GOS.obo")
get_relation_names("GOS.obo")

// abraham ?? cual es la diferencia con la linea 4 y 8
ontology <- get_ontology("GOS.obo", propagate_relationships=c("is_a", "part_of"))

get_ancestors(ontology, c("HP:0001873", "HP:0011877"))

## Test 
## Sea D el nodo raíz  
## distancia.
## 
## depth:=distancia (a,D) . distancia(a,D)=0 <-> a=D
## Transitivity :
## distancia(a,b)<=distancia(a,D)+distancia(b,D)
## a parent of b implies depth(b) <= depth (a) CREO QUE NO .. NO ESTOY SEGURA :()
#                            1       2
#                        depth (b) <= dist (b,a)+depth(a) es un minimo
##          _D
##         c  |         
##        /   \     
##        a    \
##          \__ \               
##              b

## Structure DAG 
## function distance
## fucntion depth
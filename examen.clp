(defglobal ?*nummagico* = 21)

(deffacts datos (numeros 5 3 8 14 7))




(defrule sumar
	(numeros $?numeros)
	?f1 <- (numeros $?ini ?x ?y $?fin)
    =>
    (retract ?x ?y)
    (assert (lista $?ini $?fin (+ ?x ?y)))
)


(defrule restar
   
)


(defrule multiplicar
   
)


(defrule dividir
   
)


(defrule fin
   
)
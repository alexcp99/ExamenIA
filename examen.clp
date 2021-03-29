(defglobal ?*nummagico* = 21)

(deffacts datos (numeros 5 3 8 14 7))


(defrule sumar
	(numeros $?numeros)
	?f1 <- (numeros $?ini ?x ?y $?fin)
	(ressuma ?a)
    =>
    (retract ?f1)
    (assert (lista $?ini (+ ?x ?y) $?fin))
    (printout "Estoy sumando" crlf)
)


(defrule restar
	(numeros $?numeros)
	?f1 <- (numeros $?ini ?x ?y $?fin)
	(resresta ?b)
		(test (> ( - ?x ?y) 0); compruebo que el resultado de la resta es un numero >0
    =>
    (retract f1)
    (assert (lista $?ini (- ?x ?y) $?fin))
    (printout "Estoy restando" crlf)

)






(defglobal ?*nummagico* = 21)

(deffacts datos (numeros 5 3 8 14 7))


(defrule sumar
	(numeros $?numeros)
	?f1 <- (numeros $?ini ?x ?y $?fin)
	?suma <- (numeros $?ini)
    =>
    (suma (+ ?x ?y))
    (retract ?x)
    (retract ?y)
    (assert (lista $?ini $?fin ?suma))
)


(defrule restar
	(numeros $?numeros)
	?f1 <- (numeros $?ini ?x ?y $?fin)
	(resta (- ?x ?y))
	(test > ?resta 0); compruebo que el resultado de la resta es un numero >0
    =>
    (retract ?x)
    (retract ?y)
    (assert (lista $?ini $?fin ?resta))
)


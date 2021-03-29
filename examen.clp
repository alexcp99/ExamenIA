
(deffacts datos (numeros 5 3 8 14 7))


(defrule sumar
	?f1 <- (numeros $?ini ?x ?y $?fin)
	(ressuma ?a)
    =>
    (assert (numeros $?ini (+ ?x ?y) $?fin))
    (printout "Estoy sumando" crlf)
)


(defrule restar
	?f1 <- (numeros $?ini ?x ?y $?fin)
	(test (> ( - ?x ?y) 21))
    =>
    (assert (numeros $?ini (- ?x ?y) $?fin))
    (printout "Estoy restando" crlf)
)

(defrule multiplicar
	?f1 <- (numeros $?ini ?x ?y $?fin)
	(resmulti ?c)
    =>
    (assert (numeros $?ini (* ?x ?y) $?fin))
    (printout "Estoy multiplicando" crlf)
)


(defrule dividir
	?f1 <- (numeros $?ini ?x ?y $?fin)
	(test (= (mod ?x ?y) 21))
    =>
    (assert (numeros $?ini (* ?x ?y) $?fin))
    (printout "Estoy dividiendo" crlf)
)



(defrule finalizar
	?f <- (numeros ?n)
	(res 21)
	=>
	(printout "Programa finalizado, se ha encontrado el numero magico" crlf)
	(halt)
)






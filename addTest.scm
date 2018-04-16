(MAKE-TEST-GROUP 'ADD-FUNCTION (LAMBDA () 
	(MAKE-TEST '-CAN-ADD-TWO-NUMBER-false
		(LAMBDA ()
		  (LET ((Y (ADD 5 8)))
		    (ASSERT-EQUAL (cons 1 (cons 2 5)) (cons 1 (cons 2 (cons 5 9)))))))
	(MAKE-TEST '-CAN-AGIN-ADD-TWO-false
	   (LAMBDA ()
		  (LET ((Y (ADD 5 5)))
		    (ASSERT-EQUAL '(1 2 5 2) '(1 2)))))))
(quit)
;(cons 1 3)

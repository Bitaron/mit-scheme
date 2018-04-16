(define (make-test-group name-of-test-group test-funcs)
  (newline) 
  (display name-of-test-group)
  (newline)
  (test-funcs))

(define (make-test name-of-test test-func)
  (display name-of-test)
  (test-func))

(define (assert-equal actual expected)
	(define (primitive? data)
		(or (integer? data) (symbol? data) (string? data) (char? data)))
		
		
	(define (eq-pair? a e)
		(define (base-case? )
			(cond 	((or (null? a) (null? e)) #f)
					((not (and (pair? a) (pair? e))) #f)))
		
		(define (car-equal? )
			(cond	((and (primitive? (car a)) (primitive? (car e)))
						(if (not (eq? (car a) (car e))) #f))
					((or (primitive? (car a)) (primitive? (car e))) #f)
					(else (eq-pair? (car a) (car e)))))
		
		(define (cdr-equal?)
			(cond	((and (primitive? (cdr a)) (primitive? (cdr e)))
						(if (not (eq? (cdr a) (cdr e))) #f))
					((or (primitive? (cdr a)) (primitive? (cdr e))) #f)
					(else (eq-pair? (cdr a) (cdr e)))))
					
		(or (and (null? a) (null? e)) (and (base-case?) (car-equal?) (cdr-equal?))))
				
	(define (equal-c? )
		(if (and (primitive? actual) (primitive? expected))
			(if (eq? actual expected) #t #f)
			(eq-pair? actual expected)))
			
	(define (display-c )
		(if (equal-c?)
			(display '-passed)
			(display '-failed))
		(newline))
			
	(display-c))
	

	

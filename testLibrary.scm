(define (make-test-group name-of-test-group test-funcs)
  (newline) 
  (display name-of-test-group)
  (newline)
  (test-funcs))

(define (make-test name-of-test test-func)
  (display name-of-test)
  (test-func))

(define (assert-equal actual expected)
	(if (equal? actual expected)
		(display '-PASSED) 
		(display '-FAILED))
	(NEWLINE))

	

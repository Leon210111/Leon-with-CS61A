(define (split-at lst n)
  (cond
  ((null? lst)
      (cons lst nil))
  ((= 0 n)  (cons nil lst) )
  (else
      (cons 
          (append (list (car lst))
                (car(split-at (cdr lst) (- n 1))) 
          )
          (cdr (split-at (cdr lst) (- n 1)))
      )
  )
  )
)


(define (compose-all funcs)
  (cond 
  ((null? funcs) 
        (lambda (x) x))
  (else 
        (lambda (x) 
                 ((compose-all (cdr funcs)) 
                 ((car funcs) x))
        )
  )
  )
)


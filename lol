(load "/Applications/PLT/scheme/simply.scm")
(load "/Applications/PLT/scheme/functions.scm")
(load "/Applications/PLT/scheme/ttt.scm")

(define (card-val card)
  (cond ((equal? (last card) 'a) 4)
        ((equal? (last card) 'k) 3)
        ((equal? (last card) 'q) 2)
        ((equal? (last card) 'j) 1)
        (else 0)))
        
(define (high-card-points card)
  (accumulate + (every card-val card)))

(define (count-suit suit cards)
  (count (everyfirst cards) suit NOT WRITTEN

(define (suit-counts cards)
  (se (count-suit 's cards)
      (count-suit 'h cards)
      (count-suit 'c cards)
      (count-suit 'd cards)))

(define (suit-dist-points num)
  (cond ((equal? 0 num) 3)
        ((equal? 1 num) 2)
        ((equal? 2 num) 1)
        (else 0)))

(define (hand-dist-points cards)
  (accumulate + (every suit-dist-point (suit-counts cards))))

(define (bridge-val cards)
  (+ (hand-dist-points cards) (high-card-points cards)))

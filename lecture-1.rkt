#lang debug racket

; number
186
; premitives
(+ 186 234)
(+ 186 234 912)
(- 3 1)
(- 3 1 1)
(* 1 2 3)
(/ 1 2 3)
; constant
pi

; pair
(cons 1 2)
; list
(cons 1 null)
(cons 1 (cons 2 (cons 3 null)))
(list 1 2 3)
'(1 2 3)
; pattern matching on list
(match '(a b c)
  [(cons head tail) head])
(match '()
  [(cons head tail) 'a]
  [(list) 'b])

; definitions
(define dnsjlndjabfjkdabfjsjfbdsjkjdksbf 2)
dnsjlndjabfjkdabfjsjfbdsjkjdksbf
(define (aksndwjklkvndskdlfja a b)
  (+ a b))
(aksndwjklkvndskdlfja 3213 12893281)
(define aksndwjklkvndskdlfja1 +)
(aksndwjklkvndskdlfja1 3213 12893281)
(define aksndwjklkvndskdlfja2
  ; λ <=> lambda
  (λ (a b) (+ a b)))
(aksndwjklkvndskdlfja2 3213 12893281)
(define (circle-area radius)
  (* pi radius radius))
(define (circumference radius)
  (* pi radius 2))

; string
"abc"
(string->list "abc")

; programming in functional way
(define (reverse1 xs [result '()])
  #R xs
  #R result
  (match xs
    [(cons x xs) (reverse1 xs (cons x result))]
    [(list) result]))
(reverse1 (string->list "abc"))

(foldl + 0 '(1 2 3))
(define (reverse2 l)
  (foldl cons '() l))
(reverse2 '(a b c))

(define (foldl1 fn acc xs)
  (match xs
    [(cons x xs) (foldl1 fn (fn x acc) xs)]
    [else acc]))

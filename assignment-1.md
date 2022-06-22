# Assignment 1

As we already know, `foldl` can be applied to many places, e.g.

1. `(foldl + 0 '(1 2 3))`
2. `(define (reverse l) (foldl cons '() l))`

## Question

Questions are you have to solve, each has a template and some challenges, they can be down with known knowledge, complete means

1. complete the template's body, then the code can be compiled
2. show your test cases, 3 to 5 cases preferred
3. explain the ideas

The challenge of question do not have to do, but you can give it a try.

### Question 1: `filter`

```racket
> (filter positive? '(1 2 -1 0 3))
'(1 2 3)
```

As you can see, `filter` takes a function `positive?` and a list, and end up producing a list that preserves only positive elements.

#### Template

```racket
(define (filter pred? lst)
  ; TODO
  )
```

#### Challenge

1. If you use `foldr` to complete, does the following program perform same as builtin `filter`?

    ```racket
    (filter (λ (x)
              (if (positive? x)
                  x
                  (error (format "bad: ~a" x))))
            '(1 2 -1 0 3))
    ```

    If not, why?

2. If you use `foldl` and `reverse` to complete, does it still fast as builtin `filter`? If so, why? If not, why?

### Question 2: `map`

```racket
> (map add1 '(1 2 3 4 5))
'(2 3 4 5 6)
```

With your knowledge, write your version of `map`

#### Template

```racket
(define (map fn lst)
  ; TODO
  )
```

#### Challenge

1. compare to `foldl`, what's the different?
2. make a caesar cipher based on you learned

#!/usr/bin/env racket

#lang racket/base

(require csv-reading racket/cmdline racket/string racket/list)

(define create-files? (make-parameter #f))
(define filename
  (command-line
    #:once-each
    [("-c") "Create a .tid file for each row (after header)"
            (create-files? #t)]
    #:args (filename) 
    filename))

;(displayln filename)

(define reader
  (make-csv-reader
    (open-input-file filename)
   '((separator-chars            #\,)
     (strip-leading-whitespace?  . #t)
     (strip-trailing-whitespace? . #t))))

(define (row-empty? row)
  (and (= 1 (length row)) (equal? "" (car row))))

; fill empty fields with ""
(define (fix-row row header)
  (let ([row-len (length row)]
        [header-len (length header)])
    (if (< row-len header-len)
      (append row (make-list (- header-len row-len) ""))
      row)))

(define header (reader))
(define (make-tid-list field-names field-values)
  ;(displayln field-names)
  ;(println field-values)
  (map (lambda (name-val)
         (string-join name-val ": "))
       (filter (lambda (name-val) 
                 (non-empty-string? (cadr name-val))) 
               (map list field-names field-values))))

(csv-for-each (lambda (row)
                ;(map () header )
                (when (not (row-empty? row))
                  (displayln 
                    (string-join
                      (make-tid-list header (fix-row row header)) 
                      "\n"))
                  (newline))
                )
              reader)


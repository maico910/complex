(defmodule cmplx-trig
  (export (cos 1)
          (sin 1)
          (tan 1)
          (csc 1)
          (sec 1)
          (cot 1)
          ;; XXX these are broken right now
          ;; (cosh 1)
          ;; (sinh 1)
          ;; (tanh 1)
          ;; (csch 1)
          ;; (sech 1)
          ;; (coth 1)
          ))

(include-lib "complex/include/data-types.lfe")
(include-lib "complex/include/options.lfe")

;; Trigonometric functions

(defun sin
  (((match-complex real r img i))
   (complex:new (* (math:sin r) (math:cosh i))
                (* (math:cos r) (math:sinh i)))))

(defun cos
  (((match-complex real r img i))
   (complex:new (* (math:cos r) (math:cosh i))
                (* -1 (math:sin r) (math:sinh i)))))

(defun tan (z)
  (complex:div (sin z)
               (cos z)))

(defun csc (z)
  (complex:div (complex:one)
               (sin z)))

(defun sec (z)
  (complex:div (complex:one)
               (cos z)))

(defun cot (z)
  (complex:div (complex:one)
               (tan z)))

;; Hyperbolic trigonometric functions

;; XXX these are broken right now

;; (defun sinh
;;   (((match-complex real r img i))
;;    (complex:new (* (math:sinh r) (math:cos i))
;;                 (* (math:cosh r) (math:sin i)))))

;; (defun cosh
;;   (((match-complex real r img i))
;;    (complex:new (* (math:cosh r) (math:cos i))
;;                 (* -1 (math:sinh r) (math:sin i)))))

;; (defun tanh (z)
;;   (complex:div (sinh z)
;;                (cosh z)))

;; (defun csch (z)
;;   (complex:div 1
;;                (sinh z)))

;; (defun sech (z)
;;   (complex:div 1
;;                (cosh z)))

;; (defun coth (z)
;;   (complex:div 1
;;                (tanh z)))

;; Inverse trigonometric functions

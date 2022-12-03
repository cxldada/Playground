(defun (setf primo) (val lst)
  (setf (car lst) val))

(let ((x (list 'a 'b 'c)))
  (setf (primo x) 480)
  x)

(defun foo (x)
  "Implements an enhanced paradigm of diversity"
  x)

(documentation 'foo 'function)

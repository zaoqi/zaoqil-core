
;;  Copyright (C) 2017  Zaoqi

;;  This program is free software: you can redistribute it and/or modify
;;  it under the terms of the GNU Affero General Public License as published
;;  by the Free Software Foundation, either version 3 of the License, or
;;  (at your option) any later version.

;;  This program is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;  GNU Affero General Public License for more details.

;;  You should have received a copy of the GNU Affero General Public License
;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.
#lang typed/racket

(define-type Module (Listof global-define))
(struct global-define ([id : Symbol] [val : Exp]))
(define-type Exp (U union-type symbol switch product-type pair car-cdr function-type lambda-exp app type-of type var))
(define-type union-type (Listof Symbol))
(define-type symbol Symbol)
(struct case ([sym : Symbol] [val : Exp]))
(define-type switch (Listof case))
(struct product-type ([left : Exp] [right : Exp]))
(struct pair ([left : Exp] [right : Exp]))
(struct car-cdr ([pair : Exp] [car : Symbol] [cdr : Symbol] [val : Exp]))
(struct function-type ([left : Exp] [right : Exp]))
(struct lambda-exp ([var : Symbol] [val : Exp]))
(struct app ([func : Exp] [val : Exp]))
(struct type-of ([val : Exp] [type : Exp]))
(struct type ())
(struct var ([id : Symbol]))
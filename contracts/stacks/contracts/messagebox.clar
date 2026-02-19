;; ────────────────────────────────────────
;; MessageBox v1.0.0
;; Author: solidworkssa
;; License: MIT
;; ────────────────────────────────────────

(define-constant VERSION "1.0.0")

;; Error codes
(define-constant ERR-NOT-AUTHORIZED (err u401))
(define-constant ERR-NOT-FOUND (err u404))
(define-constant ERR-ALREADY-EXISTS (err u409))
(define-constant ERR-INVALID-INPUT (err u422))

;; MessageBox Clarity Contract
;; Encrypted on-chain messaging service.


(define-map messages
    {recipient: principal, index: uint}
    {sender: principal, content: (string-utf8 256)}
)
(define-map message-count principal uint)

(define-public (send (recipient principal) (content (string-utf8 256)))
    (let ((count (default-to u0 (map-get? message-count recipient))))
        (map-set messages {recipient: recipient, index: count} {sender: tx-sender, content: content})
        (map-set message-count recipient (+ count u1))
        (ok true)
    )
)


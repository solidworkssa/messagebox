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


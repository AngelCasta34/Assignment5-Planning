(define (problem problem7)
  (:domain rooms-two-hands)
  (:objects
    c1                              - character
    handLeft handRight              - hand
    red-key blue-key green-key      - key
    treasure                        - item
    r1 r2 r3 r4 r5 r6 hw1 hw2 hw3 hw4 - room
  )

  (:init
    ;; two free hands
    (free-hand c1 handLeft)
    (free-hand c1 handRight)

    ;; always-open connections
    (connected r1  hw1) (connected hw1 r1)
    (connected hw1 hw2) (connected hw2 hw1)
    (connected r2  hw2) (connected hw2 r2)
    (connected r5  hw2) (connected hw2 r5)

    ;; locked connections
    (locked-door hw2 hw3) (locked-door hw3 hw2)
    (locked-door hw3 r4)  (locked-door r4 hw3)
    (locked-door hw3 hw4) (locked-door hw4 hw3)

    ;; key‐door mappings
    (is-key red-key   hw2 hw3) (is-key red-key   hw3 hw2)
    (is-key blue-key  hw3 r4)  (is-key blue-key  r4 hw3)
    (is-key green-key hw3 hw4) (is-key green-key hw4 hw3)

    ;; other open connections
    (connected r3  hw3) (connected hw3 r3)
    (connected r6  hw4) (connected hw4 r6)

    ;; key & item locations
    (in red-key   r2)
    (in blue-key  r3)
    (in green-key r4)
    (in treasure  r6)

    ;; agent start
    (at c1 r1)
  )

  (:goal
    (in treasure r1)
  )
)

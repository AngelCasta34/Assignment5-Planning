(define (problem problem6)
  (:domain rooms-two-hands)
  (:objects
    c1                     - character
    hand1 hand2            - hand
    ruby emerald sapphire diamond opal    - item
    r1 r2 r3 r4 r5 r6 hw1 hw2 hw3 hw4       - room
  )

  (:init
    ;; two free hands
    (free-hand c1 hand1)
    (free-hand c1 hand2)

    ;; corridor connectivity
    (connected r1  hw1) (connected hw1 r1)
    (connected hw1 hw2) (connected hw2 hw1)
    (connected r2  hw2) (connected hw2 r2)
    (connected hw2 hw3) (connected hw3 hw2)
    (connected r3  hw3) (connected hw3 r3)
    (connected r5  hw3) (connected hw3 r5)
    (connected r4  hw3) (connected hw3 r4)
    (connected hw3 hw4) (connected hw4 hw3)
    (connected r6  hw4) (connected hw4 r6)

    ;; items in rooms
    (in ruby     r2)
    (in emerald  r3)
    (in sapphire r4)
    (in diamond  r5)
    (in opal     r6)

    ;; agent start
    (at c1 r1)
  )

  (:goal
    (and
      (in ruby     r1)
      (in emerald  r1)
      (in sapphire r1)
      (in diamond  r1)
      (in opal     r1)
    )
  )
)

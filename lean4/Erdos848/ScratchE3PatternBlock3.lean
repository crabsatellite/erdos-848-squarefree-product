import Erdos848.ScratchE3Pattern

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

local instance scratchE3Block3ForallDecidable
    (P : ScratchE3RootPattern -> Prop) [∀ p, Decidable (P p)] :
    Decidable (∀ p, P p) := scratchE3ForallDecidable P

theorem scratchE3PaymentCrossInequality_block3 :
    ∀ p2 p3 p4 p5 : ScratchE3RootPattern,
      scratchE3PaymentCrossInequality .secondThird p2 p3 p4 p5 := by
  decide

#print axioms scratchE3PaymentCrossInequality_block3

end Erdos848

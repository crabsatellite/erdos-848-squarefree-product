import Erdos848.ScratchE3PatternBlock0
import Erdos848.ScratchE3PatternBlock1
import Erdos848.ScratchE3PatternBlock2
import Erdos848.ScratchE3PatternBlock3
import Erdos848.ScratchE3PatternBlock4

namespace Erdos848

theorem scratchE3PaymentCrossInequality_all
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) :
    scratchE3PaymentCrossInequality p1 p2 p3 p4 p5 := by
  cases p1
  · exact scratchE3PaymentCrossInequality_block0 p2 p3 p4 p5
  · exact scratchE3PaymentCrossInequality_block1 p2 p3 p4 p5
  · exact scratchE3PaymentCrossInequality_block2 p2 p3 p4 p5
  · exact scratchE3PaymentCrossInequality_block3 p2 p3 p4 p5
  · exact scratchE3PaymentCrossInequality_block4 p2 p3 p4 p5

#print axioms scratchE3PaymentCrossInequality_all

end Erdos848

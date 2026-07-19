import Erdos848.ScratchE3Count

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

noncomputable def scratchE3PairLowerDensityRat
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) (pair : Fin 3) : Rat :=
  (scratchE3PairLowerNumerator p1 p2 p3 p4 p5 pair : Rat) /
    scratchE3FullModulus

def scratchE3PairEndpointRat
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) (pair : Fin 3) : Rat :=
  scratchE3PairEndpoint p1 p2 p3 p4 p5 pair

noncomputable def scratchE3TripleUpperDensityRat
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) : Rat :=
  (scratchE3TripleUpperNumerator p1 p2 p3 p4 p5 : Rat) /
    scratchE3FullModulus

def scratchE3TripleEndpointRat
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) : Rat :=
  scratchE3TripleEndpoint p1 p2 p3 p4 p5

theorem scratchE3ThresholdDensityRat_decomposition
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) :
    scratchE3ThresholdDensityRat p1 p2 p3 p4 p5 =
      1 - (∑ pair : Fin 3,
        scratchE3PairLowerDensityRat p1 p2 p3 p4 p5 pair) +
        2 * scratchE3TripleUpperDensityRat p1 p2 p3 p4 p5 := by
  norm_num [scratchE3ThresholdDensityRat, scratchE3PairLowerDensityRat,
    scratchE3TripleUpperDensityRat, scratchE3ThresholdNumerator,
    scratchE3FullModulus, Fin.sum_univ_succ]
  ring

theorem scratchE3ThresholdEndpointRat_decomposition
    (p1 p2 p3 p4 p5 : ScratchE3RootPattern) :
    scratchE3ThresholdEndpointRat p1 p2 p3 p4 p5 =
      (∑ pair : Fin 3,
        scratchE3PairEndpointRat p1 p2 p3 p4 p5 pair) +
        2 * scratchE3TripleEndpointRat p1 p2 p3 p4 p5 := by
  norm_num [scratchE3ThresholdEndpointRat, scratchE3PairEndpointRat,
    scratchE3TripleEndpointRat, scratchE3ThresholdEndpoint,
    Fin.sum_univ_succ]

#print axioms scratchE3ThresholdDensityRat_decomposition
#print axioms scratchE3ThresholdEndpointRat_decomposition

end Erdos848

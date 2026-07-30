import Erdos848.TailFortyMillionRootCoefficientChecker
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.Constants
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def fortyMillionK3BandPairRowsFor
    (qPrimes : List Nat) : List (List Nat) :=
  qPrimes.flatMap fun q =>
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.mixedMaskPrimes.filter
      fun p => decide (p < q ∧
        168_000_000 < p * q *
          Erdos848.GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime q ∧
        p * q *
          Erdos848.GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime q <
            200_000_000)).map
      fun p => [p, q]

def fortyMillionK3BandPairPasses (supportPrefix : List Nat) : Bool :=
  Erdos848.fortyMillionRootCorePrefixPasses
    Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    3 5_000_000 supportPrefix

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

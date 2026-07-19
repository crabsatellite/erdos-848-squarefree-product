import Erdos848.GeneratedTailDiagonalCoverage.TailRootAggregate
import Erdos848.GeneratedTailDiagonalCoverage.TailOrderAggregate
import Erdos848.GeneratedTailDiagonalCoverage.TailProjectionAggregate

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem cellTargetsOrdered (cell : OddModNineCell) :
    (cellTargets cell).AdjacentOrdered := by
  rcases cell with ⟨parity, residue⟩
  cases parity
  · fin_cases residue
    · exact cellMarkerOne0Ordered
    · exact cellMarkerOne1Ordered
    · exact cellMarkerOne2Ordered
    · exact cellMarkerOne3Ordered
    · exact cellMarkerOne4Ordered
    · exact cellMarkerOne5Ordered
    · exact cellMarkerOne6Ordered
    · exact cellMarkerOne7Ordered
    · exact cellMarkerOne8Ordered
  · fin_cases residue
    · exact cellMarkerThree0Ordered
    · exact cellMarkerThree1Ordered
    · exact cellMarkerThree2Ordered
    · exact cellMarkerThree3Ordered
    · exact cellMarkerThree4Ordered
    · exact cellMarkerThree5Ordered
    · exact cellMarkerThree6Ordered
    · exact cellMarkerThree7Ordered
    · exact cellMarkerThree8Ordered

end Erdos848.GeneratedTailDiagonalCoverage

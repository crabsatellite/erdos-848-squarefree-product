import Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.OrderBlock0213

namespace Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenOneMarker1_2Ordered : evenOneMarker1_2.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 2848) (by decide)
  exact orderBlock0213

end Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

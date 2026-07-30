import Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.OrderBlock0212

namespace Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenOneMarker1_1Ordered : evenOneMarker1_1.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 2857) (by decide)
  exact orderBlock0212

end Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

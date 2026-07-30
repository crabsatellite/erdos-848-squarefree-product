import Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.OrderBlock0312

namespace Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenOneMarker3_3Ordered : evenOneMarker3_3.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 2846) (by decide)
  exact orderBlock0312

end Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

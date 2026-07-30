import Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.OrderBlock0262

namespace Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenOneMarker2_2Ordered : evenOneMarker2_2.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 2841) (by decide)
  exact orderBlock0262

end Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

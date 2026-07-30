import Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.OrderBlock0263

namespace Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenOneMarker2_3Ordered : evenOneMarker2_3.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 2865) (by decide)
  exact orderBlock0263

end Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

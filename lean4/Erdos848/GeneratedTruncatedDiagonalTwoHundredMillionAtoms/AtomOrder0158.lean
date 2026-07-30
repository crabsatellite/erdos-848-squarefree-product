import Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.OrderBlock0302

namespace Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenOneMarker2_42Ordered : evenOneMarker2_42.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 2850) (by decide)
  exact orderBlock0302

end Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

import Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.OrderBlock0556

namespace Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenOneMarker8_2Ordered : evenOneMarker8_2.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 2857) (by decide)
  exact orderBlock0556

end Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

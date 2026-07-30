import Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.OrderBlock0409

namespace Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenOneMarker5_2Ordered : evenOneMarker5_2.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 2864) (by decide)
  exact orderBlock0409

end Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

import Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.OrderBlock0360

namespace Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenOneMarker4_2Ordered : evenOneMarker4_2.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 2850) (by decide)
  exact orderBlock0360

end Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

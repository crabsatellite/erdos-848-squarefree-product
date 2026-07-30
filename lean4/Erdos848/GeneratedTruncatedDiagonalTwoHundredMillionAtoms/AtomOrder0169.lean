import Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.OrderBlock0313

namespace Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenOneMarker3_4Ordered : evenOneMarker3_4.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 2850) (by decide)
  exact orderBlock0313

end Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

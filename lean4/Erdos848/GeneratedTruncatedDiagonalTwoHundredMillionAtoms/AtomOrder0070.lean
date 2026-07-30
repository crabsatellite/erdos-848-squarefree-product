import Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.OrderBlock0214

namespace Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenOneMarker1_3Ordered : evenOneMarker1_3.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 2845) (by decide)
  exact orderBlock0214

end Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

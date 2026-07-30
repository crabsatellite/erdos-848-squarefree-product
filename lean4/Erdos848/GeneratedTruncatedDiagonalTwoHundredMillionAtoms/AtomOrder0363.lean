import Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.OrderBlock0507

namespace Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenOneMarker7_2Ordered : evenOneMarker7_2.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 2867) (by decide)
  exact orderBlock0507

end Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

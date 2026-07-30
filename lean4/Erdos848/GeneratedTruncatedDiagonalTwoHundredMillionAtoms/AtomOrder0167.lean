import Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.OrderBlock0311

namespace Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenOneMarker3_2Ordered : evenOneMarker3_2.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 2835) (by decide)
  exact orderBlock0311

end Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms

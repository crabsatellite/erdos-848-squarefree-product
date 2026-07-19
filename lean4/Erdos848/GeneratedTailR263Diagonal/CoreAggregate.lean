import Erdos848.GeneratedTailDiagonalCoverage.TailRootAggregate
import Erdos848.GeneratedTailR263Diagonal.IndexedData
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0000
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0001
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0002
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0003
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0004
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0005
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0006
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0007
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0008
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0009
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0010
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0011
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0012
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0013
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0014
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0015
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0016
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0017
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0018
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0019
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0020
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0021
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0022
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0023
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0024
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0025
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0026
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0027
import Erdos848.GeneratedTailR263Diagonal.OrderBlock0028
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0000
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0001
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0002
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0003
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0004
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0005
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0006
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0007
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0008
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0009
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0010
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0011
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0012
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0013
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0014
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0015
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0016
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0017
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0018
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0019
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0020
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0021
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0022
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0023
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0024
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0025
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0026
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0027
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0028
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0029
import Erdos848.GeneratedTailR263Diagonal.ProjectionBlock0030

namespace Erdos848.GeneratedTailR263Diagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem lowTwoMarkerOrdered : lowTwoMarker.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 157248) (by decide)
  exact (IndexedMarkerData.adjacentRangeAppend ((IndexedMarkerData.adjacentRangeAppend ((IndexedMarkerData.adjacentRangeAppend ((IndexedMarkerData.adjacentRangeAppend (orderLowTwo0000) (orderLowTwo0001))) ((IndexedMarkerData.adjacentRangeAppend (orderLowTwo0002) ((IndexedMarkerData.adjacentRangeAppend (orderLowTwo0003) (orderLowTwo0004))))))) ((IndexedMarkerData.adjacentRangeAppend ((IndexedMarkerData.adjacentRangeAppend (orderLowTwo0005) (orderLowTwo0006))) ((IndexedMarkerData.adjacentRangeAppend (orderLowTwo0007) ((IndexedMarkerData.adjacentRangeAppend (orderLowTwo0008) (orderLowTwo0009))))))))) ((IndexedMarkerData.adjacentRangeAppend ((IndexedMarkerData.adjacentRangeAppend ((IndexedMarkerData.adjacentRangeAppend (orderLowTwo0010) (orderLowTwo0011))) ((IndexedMarkerData.adjacentRangeAppend (orderLowTwo0012) ((IndexedMarkerData.adjacentRangeAppend (orderLowTwo0013) (orderLowTwo0014))))))) ((IndexedMarkerData.adjacentRangeAppend ((IndexedMarkerData.adjacentRangeAppend (orderLowTwo0015) (orderLowTwo0016))) ((IndexedMarkerData.adjacentRangeAppend (orderLowTwo0017) ((IndexedMarkerData.adjacentRangeAppend (orderLowTwo0018) (orderLowTwo0019))))))))))

theorem evenTwoCellMarker0Ordered : evenTwoCellMarker0.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 3502) (by decide)
  exact orderCell00000

theorem evenTwoCellMarker1Ordered : evenTwoCellMarker1.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 3481) (by decide)
  exact orderCell10000

theorem evenTwoCellMarker2Ordered : evenTwoCellMarker2.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 3498) (by decide)
  exact orderCell20000

theorem evenTwoCellMarker3Ordered : evenTwoCellMarker3.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 3488) (by decide)
  exact orderCell30000

theorem evenTwoCellMarker4Ordered : evenTwoCellMarker4.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 3505) (by decide)
  exact orderCell40000

theorem evenTwoCellMarker5Ordered : evenTwoCellMarker5.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 3474) (by decide)
  exact orderCell50000

theorem evenTwoCellMarker6Ordered : evenTwoCellMarker6.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 3494) (by decide)
  exact orderCell60000

theorem evenTwoCellMarker7Ordered : evenTwoCellMarker7.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 3498) (by decide)
  exact orderCell70000

theorem evenTwoCellMarker8Ordered : evenTwoCellMarker8.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 3506) (by decide)
  exact orderCell80000

theorem targetMarkersOrdered (target : TailR263DiagonalTarget) :
    (targetMarkers target).AdjacentOrdered := by
  cases target with
  | lowTwo => exact lowTwoMarkerOrdered
  | evenTwoCell residue =>
      fin_cases residue
      · exact evenTwoCellMarker0Ordered
      · exact evenTwoCellMarker1Ordered
      · exact evenTwoCellMarker2Ordered
      · exact evenTwoCellMarker3Ordered
      · exact evenTwoCellMarker4Ordered
      · exact evenTwoCellMarker5Ordered
      · exact evenTwoCellMarker6Ordered
      · exact evenTwoCellMarker7Ordered
      · exact evenTwoCellMarker8Ordered

theorem projectsTargets :
    GeneratedTailDiagonalCoverage.indexedMarker.ProjectsTailR263Targets targetMarkers := by
  apply IndexedMarkerData.projectsTailR263Targets_of_range
  have hsize : GeneratedTailDiagonalCoverage.indexedMarker.values.size = 251583 := by decide
  rw [hsize]
  exact (IndexedMarkerData.tailR263ProjectionRangeAppend ((IndexedMarkerData.tailR263ProjectionRangeAppend ((IndexedMarkerData.tailR263ProjectionRangeAppend ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0000) ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0001) (projection0002))))) ((IndexedMarkerData.tailR263ProjectionRangeAppend ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0003) (projection0004))) ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0005) (projection0006))))))) ((IndexedMarkerData.tailR263ProjectionRangeAppend ((IndexedMarkerData.tailR263ProjectionRangeAppend ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0007) (projection0008))) ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0009) (projection0010))))) ((IndexedMarkerData.tailR263ProjectionRangeAppend ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0011) (projection0012))) ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0013) (projection0014))))))))) ((IndexedMarkerData.tailR263ProjectionRangeAppend ((IndexedMarkerData.tailR263ProjectionRangeAppend ((IndexedMarkerData.tailR263ProjectionRangeAppend ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0015) (projection0016))) ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0017) (projection0018))))) ((IndexedMarkerData.tailR263ProjectionRangeAppend ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0019) (projection0020))) ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0021) (projection0022))))))) ((IndexedMarkerData.tailR263ProjectionRangeAppend ((IndexedMarkerData.tailR263ProjectionRangeAppend ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0023) (projection0024))) ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0025) (projection0026))))) ((IndexedMarkerData.tailR263ProjectionRangeAppend ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0027) (projection0028))) ((IndexedMarkerData.tailR263ProjectionRangeAppend (projection0029) (projection0030))))))))))

end Erdos848.GeneratedTailR263Diagonal

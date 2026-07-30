import Erdos848.GeneratedHybridHighDiagonalTwoBillion.IndexedData
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.TargetData
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.ProjectionAggregateLevel03Block0000
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0000
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0001
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0002
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0003
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0004
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0005
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0006
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0007
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0008
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0009
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0010
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0011
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0012
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0013
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0014
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0015
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0016
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0017
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0018
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0019
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0020
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0021
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0022
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0023
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0024
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0025
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0026
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0027
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0028
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0029
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0030
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0031
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0032
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.OrderBlock0033

namespace Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem atomTargetsOrdered (atom : TruncatedDiagonalAtom) :
    (atomTargets atom).AdjacentOrdered := by
  cases atom with
  | divisibleByEightCell cell =>
      fin_cases cell
      · exact divisibleByEightMarker0Ordered
      · exact divisibleByEightMarker1Ordered
      · exact divisibleByEightMarker2Ordered
      · exact divisibleByEightMarker3Ordered
      · exact divisibleByEightMarker4Ordered
      · exact divisibleByEightMarker5Ordered
      · exact divisibleByEightMarker6Ordered
      · exact divisibleByEightMarker7Ordered
      · exact divisibleByEightMarker8Ordered
  | evenTwoCell cell =>
      fin_cases cell
      · exact evenTwoMarker0Ordered
      · exact evenTwoMarker1Ordered
      · exact evenTwoMarker2Ordered
      · exact evenTwoMarker3Ordered
      · exact evenTwoMarker4Ordered
      · exact evenTwoMarker5Ordered
      · exact evenTwoMarker6Ordered
      · exact evenTwoMarker7Ordered
      · exact evenTwoMarker8Ordered
  | evenOneFibre cell residue =>
      fin_cases cell <;> fin_cases residue
      · exact evenOneMarker0_0Ordered
      · exact evenOneMarker0_1Ordered
      · exact evenOneMarker0_2Ordered
      · exact evenOneMarker0_3Ordered
      · exact evenOneMarker0_4Ordered
      · exact evenOneMarker0_5Ordered
      · exact evenOneMarker0_6Ordered
      · exact evenOneMarker0_7Ordered
      · exact evenOneMarker0_8Ordered
      · exact evenOneMarker0_9Ordered
      · exact evenOneMarker0_10Ordered
      · exact evenOneMarker0_11Ordered
      · exact evenOneMarker0_12Ordered
      · exact evenOneMarker0_13Ordered
      · exact evenOneMarker0_14Ordered
      · exact evenOneMarker0_15Ordered
      · exact evenOneMarker0_16Ordered
      · exact evenOneMarker0_17Ordered
      · exact evenOneMarker0_18Ordered
      · exact evenOneMarker0_19Ordered
      · exact evenOneMarker0_20Ordered
      · exact evenOneMarker0_21Ordered
      · exact evenOneMarker0_22Ordered
      · exact evenOneMarker0_23Ordered
      · exact evenOneMarker0_24Ordered
      · exact evenOneMarker0_25Ordered
      · exact evenOneMarker0_26Ordered
      · exact evenOneMarker0_27Ordered
      · exact evenOneMarker0_28Ordered
      · exact evenOneMarker0_29Ordered
      · exact evenOneMarker0_30Ordered
      · exact evenOneMarker0_31Ordered
      · exact evenOneMarker0_32Ordered
      · exact evenOneMarker0_33Ordered
      · exact evenOneMarker0_34Ordered
      · exact evenOneMarker0_35Ordered
      · exact evenOneMarker0_36Ordered
      · exact evenOneMarker0_37Ordered
      · exact evenOneMarker0_38Ordered
      · exact evenOneMarker0_39Ordered
      · exact evenOneMarker0_40Ordered
      · exact evenOneMarker0_41Ordered
      · exact evenOneMarker0_42Ordered
      · exact evenOneMarker0_43Ordered
      · exact evenOneMarker0_44Ordered
      · exact evenOneMarker0_45Ordered
      · exact evenOneMarker0_46Ordered
      · exact evenOneMarker0_47Ordered
      · exact evenOneMarker0_48Ordered
      · exact evenOneMarker1_0Ordered
      · exact evenOneMarker1_1Ordered
      · exact evenOneMarker1_2Ordered
      · exact evenOneMarker1_3Ordered
      · exact evenOneMarker1_4Ordered
      · exact evenOneMarker1_5Ordered
      · exact evenOneMarker1_6Ordered
      · exact evenOneMarker1_7Ordered
      · exact evenOneMarker1_8Ordered
      · exact evenOneMarker1_9Ordered
      · exact evenOneMarker1_10Ordered
      · exact evenOneMarker1_11Ordered
      · exact evenOneMarker1_12Ordered
      · exact evenOneMarker1_13Ordered
      · exact evenOneMarker1_14Ordered
      · exact evenOneMarker1_15Ordered
      · exact evenOneMarker1_16Ordered
      · exact evenOneMarker1_17Ordered
      · exact evenOneMarker1_18Ordered
      · exact evenOneMarker1_19Ordered
      · exact evenOneMarker1_20Ordered
      · exact evenOneMarker1_21Ordered
      · exact evenOneMarker1_22Ordered
      · exact evenOneMarker1_23Ordered
      · exact evenOneMarker1_24Ordered
      · exact evenOneMarker1_25Ordered
      · exact evenOneMarker1_26Ordered
      · exact evenOneMarker1_27Ordered
      · exact evenOneMarker1_28Ordered
      · exact evenOneMarker1_29Ordered
      · exact evenOneMarker1_30Ordered
      · exact evenOneMarker1_31Ordered
      · exact evenOneMarker1_32Ordered
      · exact evenOneMarker1_33Ordered
      · exact evenOneMarker1_34Ordered
      · exact evenOneMarker1_35Ordered
      · exact evenOneMarker1_36Ordered
      · exact evenOneMarker1_37Ordered
      · exact evenOneMarker1_38Ordered
      · exact evenOneMarker1_39Ordered
      · exact evenOneMarker1_40Ordered
      · exact evenOneMarker1_41Ordered
      · exact evenOneMarker1_42Ordered
      · exact evenOneMarker1_43Ordered
      · exact evenOneMarker1_44Ordered
      · exact evenOneMarker1_45Ordered
      · exact evenOneMarker1_46Ordered
      · exact evenOneMarker1_47Ordered
      · exact evenOneMarker1_48Ordered
      · exact evenOneMarker2_0Ordered
      · exact evenOneMarker2_1Ordered
      · exact evenOneMarker2_2Ordered
      · exact evenOneMarker2_3Ordered
      · exact evenOneMarker2_4Ordered
      · exact evenOneMarker2_5Ordered
      · exact evenOneMarker2_6Ordered
      · exact evenOneMarker2_7Ordered
      · exact evenOneMarker2_8Ordered
      · exact evenOneMarker2_9Ordered
      · exact evenOneMarker2_10Ordered
      · exact evenOneMarker2_11Ordered
      · exact evenOneMarker2_12Ordered
      · exact evenOneMarker2_13Ordered
      · exact evenOneMarker2_14Ordered
      · exact evenOneMarker2_15Ordered
      · exact evenOneMarker2_16Ordered
      · exact evenOneMarker2_17Ordered
      · exact evenOneMarker2_18Ordered
      · exact evenOneMarker2_19Ordered
      · exact evenOneMarker2_20Ordered
      · exact evenOneMarker2_21Ordered
      · exact evenOneMarker2_22Ordered
      · exact evenOneMarker2_23Ordered
      · exact evenOneMarker2_24Ordered
      · exact evenOneMarker2_25Ordered
      · exact evenOneMarker2_26Ordered
      · exact evenOneMarker2_27Ordered
      · exact evenOneMarker2_28Ordered
      · exact evenOneMarker2_29Ordered
      · exact evenOneMarker2_30Ordered
      · exact evenOneMarker2_31Ordered
      · exact evenOneMarker2_32Ordered
      · exact evenOneMarker2_33Ordered
      · exact evenOneMarker2_34Ordered
      · exact evenOneMarker2_35Ordered
      · exact evenOneMarker2_36Ordered
      · exact evenOneMarker2_37Ordered
      · exact evenOneMarker2_38Ordered
      · exact evenOneMarker2_39Ordered
      · exact evenOneMarker2_40Ordered
      · exact evenOneMarker2_41Ordered
      · exact evenOneMarker2_42Ordered
      · exact evenOneMarker2_43Ordered
      · exact evenOneMarker2_44Ordered
      · exact evenOneMarker2_45Ordered
      · exact evenOneMarker2_46Ordered
      · exact evenOneMarker2_47Ordered
      · exact evenOneMarker2_48Ordered
      · exact evenOneMarker3_0Ordered
      · exact evenOneMarker3_1Ordered
      · exact evenOneMarker3_2Ordered
      · exact evenOneMarker3_3Ordered
      · exact evenOneMarker3_4Ordered
      · exact evenOneMarker3_5Ordered
      · exact evenOneMarker3_6Ordered
      · exact evenOneMarker3_7Ordered
      · exact evenOneMarker3_8Ordered
      · exact evenOneMarker3_9Ordered
      · exact evenOneMarker3_10Ordered
      · exact evenOneMarker3_11Ordered
      · exact evenOneMarker3_12Ordered
      · exact evenOneMarker3_13Ordered
      · exact evenOneMarker3_14Ordered
      · exact evenOneMarker3_15Ordered
      · exact evenOneMarker3_16Ordered
      · exact evenOneMarker3_17Ordered
      · exact evenOneMarker3_18Ordered
      · exact evenOneMarker3_19Ordered
      · exact evenOneMarker3_20Ordered
      · exact evenOneMarker3_21Ordered
      · exact evenOneMarker3_22Ordered
      · exact evenOneMarker3_23Ordered
      · exact evenOneMarker3_24Ordered
      · exact evenOneMarker3_25Ordered
      · exact evenOneMarker3_26Ordered
      · exact evenOneMarker3_27Ordered
      · exact evenOneMarker3_28Ordered
      · exact evenOneMarker3_29Ordered
      · exact evenOneMarker3_30Ordered
      · exact evenOneMarker3_31Ordered
      · exact evenOneMarker3_32Ordered
      · exact evenOneMarker3_33Ordered
      · exact evenOneMarker3_34Ordered
      · exact evenOneMarker3_35Ordered
      · exact evenOneMarker3_36Ordered
      · exact evenOneMarker3_37Ordered
      · exact evenOneMarker3_38Ordered
      · exact evenOneMarker3_39Ordered
      · exact evenOneMarker3_40Ordered
      · exact evenOneMarker3_41Ordered
      · exact evenOneMarker3_42Ordered
      · exact evenOneMarker3_43Ordered
      · exact evenOneMarker3_44Ordered
      · exact evenOneMarker3_45Ordered
      · exact evenOneMarker3_46Ordered
      · exact evenOneMarker3_47Ordered
      · exact evenOneMarker3_48Ordered
      · exact evenOneMarker4_0Ordered
      · exact evenOneMarker4_1Ordered
      · exact evenOneMarker4_2Ordered
      · exact evenOneMarker4_3Ordered
      · exact evenOneMarker4_4Ordered
      · exact evenOneMarker4_5Ordered
      · exact evenOneMarker4_6Ordered
      · exact evenOneMarker4_7Ordered
      · exact evenOneMarker4_8Ordered
      · exact evenOneMarker4_9Ordered
      · exact evenOneMarker4_10Ordered
      · exact evenOneMarker4_11Ordered
      · exact evenOneMarker4_12Ordered
      · exact evenOneMarker4_13Ordered
      · exact evenOneMarker4_14Ordered
      · exact evenOneMarker4_15Ordered
      · exact evenOneMarker4_16Ordered
      · exact evenOneMarker4_17Ordered
      · exact evenOneMarker4_18Ordered
      · exact evenOneMarker4_19Ordered
      · exact evenOneMarker4_20Ordered
      · exact evenOneMarker4_21Ordered
      · exact evenOneMarker4_22Ordered
      · exact evenOneMarker4_23Ordered
      · exact evenOneMarker4_24Ordered
      · exact evenOneMarker4_25Ordered
      · exact evenOneMarker4_26Ordered
      · exact evenOneMarker4_27Ordered
      · exact evenOneMarker4_28Ordered
      · exact evenOneMarker4_29Ordered
      · exact evenOneMarker4_30Ordered
      · exact evenOneMarker4_31Ordered
      · exact evenOneMarker4_32Ordered
      · exact evenOneMarker4_33Ordered
      · exact evenOneMarker4_34Ordered
      · exact evenOneMarker4_35Ordered
      · exact evenOneMarker4_36Ordered
      · exact evenOneMarker4_37Ordered
      · exact evenOneMarker4_38Ordered
      · exact evenOneMarker4_39Ordered
      · exact evenOneMarker4_40Ordered
      · exact evenOneMarker4_41Ordered
      · exact evenOneMarker4_42Ordered
      · exact evenOneMarker4_43Ordered
      · exact evenOneMarker4_44Ordered
      · exact evenOneMarker4_45Ordered
      · exact evenOneMarker4_46Ordered
      · exact evenOneMarker4_47Ordered
      · exact evenOneMarker4_48Ordered
      · exact evenOneMarker5_0Ordered
      · exact evenOneMarker5_1Ordered
      · exact evenOneMarker5_2Ordered
      · exact evenOneMarker5_3Ordered
      · exact evenOneMarker5_4Ordered
      · exact evenOneMarker5_5Ordered
      · exact evenOneMarker5_6Ordered
      · exact evenOneMarker5_7Ordered
      · exact evenOneMarker5_8Ordered
      · exact evenOneMarker5_9Ordered
      · exact evenOneMarker5_10Ordered
      · exact evenOneMarker5_11Ordered
      · exact evenOneMarker5_12Ordered
      · exact evenOneMarker5_13Ordered
      · exact evenOneMarker5_14Ordered
      · exact evenOneMarker5_15Ordered
      · exact evenOneMarker5_16Ordered
      · exact evenOneMarker5_17Ordered
      · exact evenOneMarker5_18Ordered
      · exact evenOneMarker5_19Ordered
      · exact evenOneMarker5_20Ordered
      · exact evenOneMarker5_21Ordered
      · exact evenOneMarker5_22Ordered
      · exact evenOneMarker5_23Ordered
      · exact evenOneMarker5_24Ordered
      · exact evenOneMarker5_25Ordered
      · exact evenOneMarker5_26Ordered
      · exact evenOneMarker5_27Ordered
      · exact evenOneMarker5_28Ordered
      · exact evenOneMarker5_29Ordered
      · exact evenOneMarker5_30Ordered
      · exact evenOneMarker5_31Ordered
      · exact evenOneMarker5_32Ordered
      · exact evenOneMarker5_33Ordered
      · exact evenOneMarker5_34Ordered
      · exact evenOneMarker5_35Ordered
      · exact evenOneMarker5_36Ordered
      · exact evenOneMarker5_37Ordered
      · exact evenOneMarker5_38Ordered
      · exact evenOneMarker5_39Ordered
      · exact evenOneMarker5_40Ordered
      · exact evenOneMarker5_41Ordered
      · exact evenOneMarker5_42Ordered
      · exact evenOneMarker5_43Ordered
      · exact evenOneMarker5_44Ordered
      · exact evenOneMarker5_45Ordered
      · exact evenOneMarker5_46Ordered
      · exact evenOneMarker5_47Ordered
      · exact evenOneMarker5_48Ordered
      · exact evenOneMarker6_0Ordered
      · exact evenOneMarker6_1Ordered
      · exact evenOneMarker6_2Ordered
      · exact evenOneMarker6_3Ordered
      · exact evenOneMarker6_4Ordered
      · exact evenOneMarker6_5Ordered
      · exact evenOneMarker6_6Ordered
      · exact evenOneMarker6_7Ordered
      · exact evenOneMarker6_8Ordered
      · exact evenOneMarker6_9Ordered
      · exact evenOneMarker6_10Ordered
      · exact evenOneMarker6_11Ordered
      · exact evenOneMarker6_12Ordered
      · exact evenOneMarker6_13Ordered
      · exact evenOneMarker6_14Ordered
      · exact evenOneMarker6_15Ordered
      · exact evenOneMarker6_16Ordered
      · exact evenOneMarker6_17Ordered
      · exact evenOneMarker6_18Ordered
      · exact evenOneMarker6_19Ordered
      · exact evenOneMarker6_20Ordered
      · exact evenOneMarker6_21Ordered
      · exact evenOneMarker6_22Ordered
      · exact evenOneMarker6_23Ordered
      · exact evenOneMarker6_24Ordered
      · exact evenOneMarker6_25Ordered
      · exact evenOneMarker6_26Ordered
      · exact evenOneMarker6_27Ordered
      · exact evenOneMarker6_28Ordered
      · exact evenOneMarker6_29Ordered
      · exact evenOneMarker6_30Ordered
      · exact evenOneMarker6_31Ordered
      · exact evenOneMarker6_32Ordered
      · exact evenOneMarker6_33Ordered
      · exact evenOneMarker6_34Ordered
      · exact evenOneMarker6_35Ordered
      · exact evenOneMarker6_36Ordered
      · exact evenOneMarker6_37Ordered
      · exact evenOneMarker6_38Ordered
      · exact evenOneMarker6_39Ordered
      · exact evenOneMarker6_40Ordered
      · exact evenOneMarker6_41Ordered
      · exact evenOneMarker6_42Ordered
      · exact evenOneMarker6_43Ordered
      · exact evenOneMarker6_44Ordered
      · exact evenOneMarker6_45Ordered
      · exact evenOneMarker6_46Ordered
      · exact evenOneMarker6_47Ordered
      · exact evenOneMarker6_48Ordered
      · exact evenOneMarker7_0Ordered
      · exact evenOneMarker7_1Ordered
      · exact evenOneMarker7_2Ordered
      · exact evenOneMarker7_3Ordered
      · exact evenOneMarker7_4Ordered
      · exact evenOneMarker7_5Ordered
      · exact evenOneMarker7_6Ordered
      · exact evenOneMarker7_7Ordered
      · exact evenOneMarker7_8Ordered
      · exact evenOneMarker7_9Ordered
      · exact evenOneMarker7_10Ordered
      · exact evenOneMarker7_11Ordered
      · exact evenOneMarker7_12Ordered
      · exact evenOneMarker7_13Ordered
      · exact evenOneMarker7_14Ordered
      · exact evenOneMarker7_15Ordered
      · exact evenOneMarker7_16Ordered
      · exact evenOneMarker7_17Ordered
      · exact evenOneMarker7_18Ordered
      · exact evenOneMarker7_19Ordered
      · exact evenOneMarker7_20Ordered
      · exact evenOneMarker7_21Ordered
      · exact evenOneMarker7_22Ordered
      · exact evenOneMarker7_23Ordered
      · exact evenOneMarker7_24Ordered
      · exact evenOneMarker7_25Ordered
      · exact evenOneMarker7_26Ordered
      · exact evenOneMarker7_27Ordered
      · exact evenOneMarker7_28Ordered
      · exact evenOneMarker7_29Ordered
      · exact evenOneMarker7_30Ordered
      · exact evenOneMarker7_31Ordered
      · exact evenOneMarker7_32Ordered
      · exact evenOneMarker7_33Ordered
      · exact evenOneMarker7_34Ordered
      · exact evenOneMarker7_35Ordered
      · exact evenOneMarker7_36Ordered
      · exact evenOneMarker7_37Ordered
      · exact evenOneMarker7_38Ordered
      · exact evenOneMarker7_39Ordered
      · exact evenOneMarker7_40Ordered
      · exact evenOneMarker7_41Ordered
      · exact evenOneMarker7_42Ordered
      · exact evenOneMarker7_43Ordered
      · exact evenOneMarker7_44Ordered
      · exact evenOneMarker7_45Ordered
      · exact evenOneMarker7_46Ordered
      · exact evenOneMarker7_47Ordered
      · exact evenOneMarker7_48Ordered
      · exact evenOneMarker8_0Ordered
      · exact evenOneMarker8_1Ordered
      · exact evenOneMarker8_2Ordered
      · exact evenOneMarker8_3Ordered
      · exact evenOneMarker8_4Ordered
      · exact evenOneMarker8_5Ordered
      · exact evenOneMarker8_6Ordered
      · exact evenOneMarker8_7Ordered
      · exact evenOneMarker8_8Ordered
      · exact evenOneMarker8_9Ordered
      · exact evenOneMarker8_10Ordered
      · exact evenOneMarker8_11Ordered
      · exact evenOneMarker8_12Ordered
      · exact evenOneMarker8_13Ordered
      · exact evenOneMarker8_14Ordered
      · exact evenOneMarker8_15Ordered
      · exact evenOneMarker8_16Ordered
      · exact evenOneMarker8_17Ordered
      · exact evenOneMarker8_18Ordered
      · exact evenOneMarker8_19Ordered
      · exact evenOneMarker8_20Ordered
      · exact evenOneMarker8_21Ordered
      · exact evenOneMarker8_22Ordered
      · exact evenOneMarker8_23Ordered
      · exact evenOneMarker8_24Ordered
      · exact evenOneMarker8_25Ordered
      · exact evenOneMarker8_26Ordered
      · exact evenOneMarker8_27Ordered
      · exact evenOneMarker8_28Ordered
      · exact evenOneMarker8_29Ordered
      · exact evenOneMarker8_30Ordered
      · exact evenOneMarker8_31Ordered
      · exact evenOneMarker8_32Ordered
      · exact evenOneMarker8_33Ordered
      · exact evenOneMarker8_34Ordered
      · exact evenOneMarker8_35Ordered
      · exact evenOneMarker8_36Ordered
      · exact evenOneMarker8_37Ordered
      · exact evenOneMarker8_38Ordered
      · exact evenOneMarker8_39Ordered
      · exact evenOneMarker8_40Ordered
      · exact evenOneMarker8_41Ordered
      · exact evenOneMarker8_42Ordered
      · exact evenOneMarker8_43Ordered
      · exact evenOneMarker8_44Ordered
      · exact evenOneMarker8_45Ordered
      · exact evenOneMarker8_46Ordered
      · exact evenOneMarker8_47Ordered
      · exact evenOneMarker8_48Ordered
  | oddCell parity cell =>
      fin_cases parity <;> fin_cases cell
      · exact oddMarkerTrue_0Ordered
      · exact oddMarkerTrue_1Ordered
      · exact oddMarkerTrue_2Ordered
      · exact oddMarkerTrue_3Ordered
      · exact oddMarkerTrue_4Ordered
      · exact oddMarkerTrue_5Ordered
      · exact oddMarkerTrue_6Ordered
      · exact oddMarkerTrue_7Ordered
      · exact oddMarkerTrue_8Ordered
      · exact oddMarkerFalse_0Ordered
      · exact oddMarkerFalse_1Ordered
      · exact oddMarkerFalse_2Ordered
      · exact oddMarkerFalse_3Ordered
      · exact oddMarkerFalse_4Ordered
      · exact oddMarkerFalse_5Ordered
      · exact oddMarkerFalse_6Ordered
      · exact oddMarkerFalse_7Ordered
      · exact oddMarkerFalse_8Ordered

theorem projectsAtoms :
    Erdos848.GeneratedHybridHighDiagonalTwoBillion.indexedMarker.ProjectsTruncatedAtoms atomTargets := by
  apply IndexedMarkerData.projectsTruncatedAtoms_of_range
  have hsize : Erdos848.GeneratedHybridHighDiagonalTwoBillion.indexedMarker.values.size = 234871 := by decide
  rw [hsize]
  exact projectionAggregateLevel03Block0000

#print axioms atomTargetsOrdered
#print axioms projectsAtoms

end Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms

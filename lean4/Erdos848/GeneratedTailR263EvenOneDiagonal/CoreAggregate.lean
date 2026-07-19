import Erdos848.GeneratedTailDiagonalCoverage.TailRootAggregate
import Erdos848.GeneratedTailR263Diagonal.CoreAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.IndexedData
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0000
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0001
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0002
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0003
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0004
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0005
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0006
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0007
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0008
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0009
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0010
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0011
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0012
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0013
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0014
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0015
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0016
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0017
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0018
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0019
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0020
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0021
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0022
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0023
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0024
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0025
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0026
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0027
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0028
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0029
import Erdos848.GeneratedTailR263EvenOneDiagonal.CellProjectionBlock0030
import Erdos848.GeneratedTailR263EvenOneDiagonal.FibreProjectionCell0
import Erdos848.GeneratedTailR263EvenOneDiagonal.FibreProjectionCell1
import Erdos848.GeneratedTailR263EvenOneDiagonal.FibreProjectionCell2
import Erdos848.GeneratedTailR263EvenOneDiagonal.FibreProjectionCell3
import Erdos848.GeneratedTailR263EvenOneDiagonal.FibreProjectionCell4
import Erdos848.GeneratedTailR263EvenOneDiagonal.FibreProjectionCell5
import Erdos848.GeneratedTailR263EvenOneDiagonal.FibreProjectionCell6
import Erdos848.GeneratedTailR263EvenOneDiagonal.FibreProjectionCell7
import Erdos848.GeneratedTailR263EvenOneDiagonal.FibreProjectionCell8
import Erdos848.GeneratedTailR263EvenOneDiagonal.OrderCell0
import Erdos848.GeneratedTailR263EvenOneDiagonal.OrderCell1
import Erdos848.GeneratedTailR263EvenOneDiagonal.OrderCell2
import Erdos848.GeneratedTailR263EvenOneDiagonal.OrderCell3
import Erdos848.GeneratedTailR263EvenOneDiagonal.OrderCell4
import Erdos848.GeneratedTailR263EvenOneDiagonal.OrderCell5
import Erdos848.GeneratedTailR263EvenOneDiagonal.OrderCell6
import Erdos848.GeneratedTailR263EvenOneDiagonal.OrderCell7
import Erdos848.GeneratedTailR263EvenOneDiagonal.OrderCell8

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem cellTargetsOrdered (cell : Fin 9) :
    (cellTargets cell).AdjacentOrdered := by
  fin_cases cell
  · exact evenOneCellMarker0Ordered
  · exact evenOneCellMarker1Ordered
  · exact evenOneCellMarker2Ordered
  · exact evenOneCellMarker3Ordered
  · exact evenOneCellMarker4Ordered
  · exact evenOneCellMarker5Ordered
  · exact evenOneCellMarker6Ordered
  · exact evenOneCellMarker7Ordered
  · exact evenOneCellMarker8Ordered

theorem fibreTargetsOrdered (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).AdjacentOrdered := by
  fin_cases cell <;> fin_cases residue
  · exact evenOneFibreMarker0_0Ordered
  · exact evenOneFibreMarker0_1Ordered
  · exact evenOneFibreMarker0_2Ordered
  · exact evenOneFibreMarker0_3Ordered
  · exact evenOneFibreMarker0_4Ordered
  · exact evenOneFibreMarker0_5Ordered
  · exact evenOneFibreMarker0_6Ordered
  · exact evenOneFibreMarker0_7Ordered
  · exact evenOneFibreMarker0_8Ordered
  · exact evenOneFibreMarker0_9Ordered
  · exact evenOneFibreMarker0_10Ordered
  · exact evenOneFibreMarker0_11Ordered
  · exact evenOneFibreMarker0_12Ordered
  · exact evenOneFibreMarker0_13Ordered
  · exact evenOneFibreMarker0_14Ordered
  · exact evenOneFibreMarker0_15Ordered
  · exact evenOneFibreMarker0_16Ordered
  · exact evenOneFibreMarker0_17Ordered
  · exact evenOneFibreMarker0_18Ordered
  · exact evenOneFibreMarker0_19Ordered
  · exact evenOneFibreMarker0_20Ordered
  · exact evenOneFibreMarker0_21Ordered
  · exact evenOneFibreMarker0_22Ordered
  · exact evenOneFibreMarker0_23Ordered
  · exact evenOneFibreMarker0_24Ordered
  · exact evenOneFibreMarker0_25Ordered
  · exact evenOneFibreMarker0_26Ordered
  · exact evenOneFibreMarker0_27Ordered
  · exact evenOneFibreMarker0_28Ordered
  · exact evenOneFibreMarker0_29Ordered
  · exact evenOneFibreMarker0_30Ordered
  · exact evenOneFibreMarker0_31Ordered
  · exact evenOneFibreMarker0_32Ordered
  · exact evenOneFibreMarker0_33Ordered
  · exact evenOneFibreMarker0_34Ordered
  · exact evenOneFibreMarker0_35Ordered
  · exact evenOneFibreMarker0_36Ordered
  · exact evenOneFibreMarker0_37Ordered
  · exact evenOneFibreMarker0_38Ordered
  · exact evenOneFibreMarker0_39Ordered
  · exact evenOneFibreMarker0_40Ordered
  · exact evenOneFibreMarker0_41Ordered
  · exact evenOneFibreMarker0_42Ordered
  · exact evenOneFibreMarker0_43Ordered
  · exact evenOneFibreMarker0_44Ordered
  · exact evenOneFibreMarker0_45Ordered
  · exact evenOneFibreMarker0_46Ordered
  · exact evenOneFibreMarker0_47Ordered
  · exact evenOneFibreMarker0_48Ordered
  · exact evenOneFibreMarker1_0Ordered
  · exact evenOneFibreMarker1_1Ordered
  · exact evenOneFibreMarker1_2Ordered
  · exact evenOneFibreMarker1_3Ordered
  · exact evenOneFibreMarker1_4Ordered
  · exact evenOneFibreMarker1_5Ordered
  · exact evenOneFibreMarker1_6Ordered
  · exact evenOneFibreMarker1_7Ordered
  · exact evenOneFibreMarker1_8Ordered
  · exact evenOneFibreMarker1_9Ordered
  · exact evenOneFibreMarker1_10Ordered
  · exact evenOneFibreMarker1_11Ordered
  · exact evenOneFibreMarker1_12Ordered
  · exact evenOneFibreMarker1_13Ordered
  · exact evenOneFibreMarker1_14Ordered
  · exact evenOneFibreMarker1_15Ordered
  · exact evenOneFibreMarker1_16Ordered
  · exact evenOneFibreMarker1_17Ordered
  · exact evenOneFibreMarker1_18Ordered
  · exact evenOneFibreMarker1_19Ordered
  · exact evenOneFibreMarker1_20Ordered
  · exact evenOneFibreMarker1_21Ordered
  · exact evenOneFibreMarker1_22Ordered
  · exact evenOneFibreMarker1_23Ordered
  · exact evenOneFibreMarker1_24Ordered
  · exact evenOneFibreMarker1_25Ordered
  · exact evenOneFibreMarker1_26Ordered
  · exact evenOneFibreMarker1_27Ordered
  · exact evenOneFibreMarker1_28Ordered
  · exact evenOneFibreMarker1_29Ordered
  · exact evenOneFibreMarker1_30Ordered
  · exact evenOneFibreMarker1_31Ordered
  · exact evenOneFibreMarker1_32Ordered
  · exact evenOneFibreMarker1_33Ordered
  · exact evenOneFibreMarker1_34Ordered
  · exact evenOneFibreMarker1_35Ordered
  · exact evenOneFibreMarker1_36Ordered
  · exact evenOneFibreMarker1_37Ordered
  · exact evenOneFibreMarker1_38Ordered
  · exact evenOneFibreMarker1_39Ordered
  · exact evenOneFibreMarker1_40Ordered
  · exact evenOneFibreMarker1_41Ordered
  · exact evenOneFibreMarker1_42Ordered
  · exact evenOneFibreMarker1_43Ordered
  · exact evenOneFibreMarker1_44Ordered
  · exact evenOneFibreMarker1_45Ordered
  · exact evenOneFibreMarker1_46Ordered
  · exact evenOneFibreMarker1_47Ordered
  · exact evenOneFibreMarker1_48Ordered
  · exact evenOneFibreMarker2_0Ordered
  · exact evenOneFibreMarker2_1Ordered
  · exact evenOneFibreMarker2_2Ordered
  · exact evenOneFibreMarker2_3Ordered
  · exact evenOneFibreMarker2_4Ordered
  · exact evenOneFibreMarker2_5Ordered
  · exact evenOneFibreMarker2_6Ordered
  · exact evenOneFibreMarker2_7Ordered
  · exact evenOneFibreMarker2_8Ordered
  · exact evenOneFibreMarker2_9Ordered
  · exact evenOneFibreMarker2_10Ordered
  · exact evenOneFibreMarker2_11Ordered
  · exact evenOneFibreMarker2_12Ordered
  · exact evenOneFibreMarker2_13Ordered
  · exact evenOneFibreMarker2_14Ordered
  · exact evenOneFibreMarker2_15Ordered
  · exact evenOneFibreMarker2_16Ordered
  · exact evenOneFibreMarker2_17Ordered
  · exact evenOneFibreMarker2_18Ordered
  · exact evenOneFibreMarker2_19Ordered
  · exact evenOneFibreMarker2_20Ordered
  · exact evenOneFibreMarker2_21Ordered
  · exact evenOneFibreMarker2_22Ordered
  · exact evenOneFibreMarker2_23Ordered
  · exact evenOneFibreMarker2_24Ordered
  · exact evenOneFibreMarker2_25Ordered
  · exact evenOneFibreMarker2_26Ordered
  · exact evenOneFibreMarker2_27Ordered
  · exact evenOneFibreMarker2_28Ordered
  · exact evenOneFibreMarker2_29Ordered
  · exact evenOneFibreMarker2_30Ordered
  · exact evenOneFibreMarker2_31Ordered
  · exact evenOneFibreMarker2_32Ordered
  · exact evenOneFibreMarker2_33Ordered
  · exact evenOneFibreMarker2_34Ordered
  · exact evenOneFibreMarker2_35Ordered
  · exact evenOneFibreMarker2_36Ordered
  · exact evenOneFibreMarker2_37Ordered
  · exact evenOneFibreMarker2_38Ordered
  · exact evenOneFibreMarker2_39Ordered
  · exact evenOneFibreMarker2_40Ordered
  · exact evenOneFibreMarker2_41Ordered
  · exact evenOneFibreMarker2_42Ordered
  · exact evenOneFibreMarker2_43Ordered
  · exact evenOneFibreMarker2_44Ordered
  · exact evenOneFibreMarker2_45Ordered
  · exact evenOneFibreMarker2_46Ordered
  · exact evenOneFibreMarker2_47Ordered
  · exact evenOneFibreMarker2_48Ordered
  · exact evenOneFibreMarker3_0Ordered
  · exact evenOneFibreMarker3_1Ordered
  · exact evenOneFibreMarker3_2Ordered
  · exact evenOneFibreMarker3_3Ordered
  · exact evenOneFibreMarker3_4Ordered
  · exact evenOneFibreMarker3_5Ordered
  · exact evenOneFibreMarker3_6Ordered
  · exact evenOneFibreMarker3_7Ordered
  · exact evenOneFibreMarker3_8Ordered
  · exact evenOneFibreMarker3_9Ordered
  · exact evenOneFibreMarker3_10Ordered
  · exact evenOneFibreMarker3_11Ordered
  · exact evenOneFibreMarker3_12Ordered
  · exact evenOneFibreMarker3_13Ordered
  · exact evenOneFibreMarker3_14Ordered
  · exact evenOneFibreMarker3_15Ordered
  · exact evenOneFibreMarker3_16Ordered
  · exact evenOneFibreMarker3_17Ordered
  · exact evenOneFibreMarker3_18Ordered
  · exact evenOneFibreMarker3_19Ordered
  · exact evenOneFibreMarker3_20Ordered
  · exact evenOneFibreMarker3_21Ordered
  · exact evenOneFibreMarker3_22Ordered
  · exact evenOneFibreMarker3_23Ordered
  · exact evenOneFibreMarker3_24Ordered
  · exact evenOneFibreMarker3_25Ordered
  · exact evenOneFibreMarker3_26Ordered
  · exact evenOneFibreMarker3_27Ordered
  · exact evenOneFibreMarker3_28Ordered
  · exact evenOneFibreMarker3_29Ordered
  · exact evenOneFibreMarker3_30Ordered
  · exact evenOneFibreMarker3_31Ordered
  · exact evenOneFibreMarker3_32Ordered
  · exact evenOneFibreMarker3_33Ordered
  · exact evenOneFibreMarker3_34Ordered
  · exact evenOneFibreMarker3_35Ordered
  · exact evenOneFibreMarker3_36Ordered
  · exact evenOneFibreMarker3_37Ordered
  · exact evenOneFibreMarker3_38Ordered
  · exact evenOneFibreMarker3_39Ordered
  · exact evenOneFibreMarker3_40Ordered
  · exact evenOneFibreMarker3_41Ordered
  · exact evenOneFibreMarker3_42Ordered
  · exact evenOneFibreMarker3_43Ordered
  · exact evenOneFibreMarker3_44Ordered
  · exact evenOneFibreMarker3_45Ordered
  · exact evenOneFibreMarker3_46Ordered
  · exact evenOneFibreMarker3_47Ordered
  · exact evenOneFibreMarker3_48Ordered
  · exact evenOneFibreMarker4_0Ordered
  · exact evenOneFibreMarker4_1Ordered
  · exact evenOneFibreMarker4_2Ordered
  · exact evenOneFibreMarker4_3Ordered
  · exact evenOneFibreMarker4_4Ordered
  · exact evenOneFibreMarker4_5Ordered
  · exact evenOneFibreMarker4_6Ordered
  · exact evenOneFibreMarker4_7Ordered
  · exact evenOneFibreMarker4_8Ordered
  · exact evenOneFibreMarker4_9Ordered
  · exact evenOneFibreMarker4_10Ordered
  · exact evenOneFibreMarker4_11Ordered
  · exact evenOneFibreMarker4_12Ordered
  · exact evenOneFibreMarker4_13Ordered
  · exact evenOneFibreMarker4_14Ordered
  · exact evenOneFibreMarker4_15Ordered
  · exact evenOneFibreMarker4_16Ordered
  · exact evenOneFibreMarker4_17Ordered
  · exact evenOneFibreMarker4_18Ordered
  · exact evenOneFibreMarker4_19Ordered
  · exact evenOneFibreMarker4_20Ordered
  · exact evenOneFibreMarker4_21Ordered
  · exact evenOneFibreMarker4_22Ordered
  · exact evenOneFibreMarker4_23Ordered
  · exact evenOneFibreMarker4_24Ordered
  · exact evenOneFibreMarker4_25Ordered
  · exact evenOneFibreMarker4_26Ordered
  · exact evenOneFibreMarker4_27Ordered
  · exact evenOneFibreMarker4_28Ordered
  · exact evenOneFibreMarker4_29Ordered
  · exact evenOneFibreMarker4_30Ordered
  · exact evenOneFibreMarker4_31Ordered
  · exact evenOneFibreMarker4_32Ordered
  · exact evenOneFibreMarker4_33Ordered
  · exact evenOneFibreMarker4_34Ordered
  · exact evenOneFibreMarker4_35Ordered
  · exact evenOneFibreMarker4_36Ordered
  · exact evenOneFibreMarker4_37Ordered
  · exact evenOneFibreMarker4_38Ordered
  · exact evenOneFibreMarker4_39Ordered
  · exact evenOneFibreMarker4_40Ordered
  · exact evenOneFibreMarker4_41Ordered
  · exact evenOneFibreMarker4_42Ordered
  · exact evenOneFibreMarker4_43Ordered
  · exact evenOneFibreMarker4_44Ordered
  · exact evenOneFibreMarker4_45Ordered
  · exact evenOneFibreMarker4_46Ordered
  · exact evenOneFibreMarker4_47Ordered
  · exact evenOneFibreMarker4_48Ordered
  · exact evenOneFibreMarker5_0Ordered
  · exact evenOneFibreMarker5_1Ordered
  · exact evenOneFibreMarker5_2Ordered
  · exact evenOneFibreMarker5_3Ordered
  · exact evenOneFibreMarker5_4Ordered
  · exact evenOneFibreMarker5_5Ordered
  · exact evenOneFibreMarker5_6Ordered
  · exact evenOneFibreMarker5_7Ordered
  · exact evenOneFibreMarker5_8Ordered
  · exact evenOneFibreMarker5_9Ordered
  · exact evenOneFibreMarker5_10Ordered
  · exact evenOneFibreMarker5_11Ordered
  · exact evenOneFibreMarker5_12Ordered
  · exact evenOneFibreMarker5_13Ordered
  · exact evenOneFibreMarker5_14Ordered
  · exact evenOneFibreMarker5_15Ordered
  · exact evenOneFibreMarker5_16Ordered
  · exact evenOneFibreMarker5_17Ordered
  · exact evenOneFibreMarker5_18Ordered
  · exact evenOneFibreMarker5_19Ordered
  · exact evenOneFibreMarker5_20Ordered
  · exact evenOneFibreMarker5_21Ordered
  · exact evenOneFibreMarker5_22Ordered
  · exact evenOneFibreMarker5_23Ordered
  · exact evenOneFibreMarker5_24Ordered
  · exact evenOneFibreMarker5_25Ordered
  · exact evenOneFibreMarker5_26Ordered
  · exact evenOneFibreMarker5_27Ordered
  · exact evenOneFibreMarker5_28Ordered
  · exact evenOneFibreMarker5_29Ordered
  · exact evenOneFibreMarker5_30Ordered
  · exact evenOneFibreMarker5_31Ordered
  · exact evenOneFibreMarker5_32Ordered
  · exact evenOneFibreMarker5_33Ordered
  · exact evenOneFibreMarker5_34Ordered
  · exact evenOneFibreMarker5_35Ordered
  · exact evenOneFibreMarker5_36Ordered
  · exact evenOneFibreMarker5_37Ordered
  · exact evenOneFibreMarker5_38Ordered
  · exact evenOneFibreMarker5_39Ordered
  · exact evenOneFibreMarker5_40Ordered
  · exact evenOneFibreMarker5_41Ordered
  · exact evenOneFibreMarker5_42Ordered
  · exact evenOneFibreMarker5_43Ordered
  · exact evenOneFibreMarker5_44Ordered
  · exact evenOneFibreMarker5_45Ordered
  · exact evenOneFibreMarker5_46Ordered
  · exact evenOneFibreMarker5_47Ordered
  · exact evenOneFibreMarker5_48Ordered
  · exact evenOneFibreMarker6_0Ordered
  · exact evenOneFibreMarker6_1Ordered
  · exact evenOneFibreMarker6_2Ordered
  · exact evenOneFibreMarker6_3Ordered
  · exact evenOneFibreMarker6_4Ordered
  · exact evenOneFibreMarker6_5Ordered
  · exact evenOneFibreMarker6_6Ordered
  · exact evenOneFibreMarker6_7Ordered
  · exact evenOneFibreMarker6_8Ordered
  · exact evenOneFibreMarker6_9Ordered
  · exact evenOneFibreMarker6_10Ordered
  · exact evenOneFibreMarker6_11Ordered
  · exact evenOneFibreMarker6_12Ordered
  · exact evenOneFibreMarker6_13Ordered
  · exact evenOneFibreMarker6_14Ordered
  · exact evenOneFibreMarker6_15Ordered
  · exact evenOneFibreMarker6_16Ordered
  · exact evenOneFibreMarker6_17Ordered
  · exact evenOneFibreMarker6_18Ordered
  · exact evenOneFibreMarker6_19Ordered
  · exact evenOneFibreMarker6_20Ordered
  · exact evenOneFibreMarker6_21Ordered
  · exact evenOneFibreMarker6_22Ordered
  · exact evenOneFibreMarker6_23Ordered
  · exact evenOneFibreMarker6_24Ordered
  · exact evenOneFibreMarker6_25Ordered
  · exact evenOneFibreMarker6_26Ordered
  · exact evenOneFibreMarker6_27Ordered
  · exact evenOneFibreMarker6_28Ordered
  · exact evenOneFibreMarker6_29Ordered
  · exact evenOneFibreMarker6_30Ordered
  · exact evenOneFibreMarker6_31Ordered
  · exact evenOneFibreMarker6_32Ordered
  · exact evenOneFibreMarker6_33Ordered
  · exact evenOneFibreMarker6_34Ordered
  · exact evenOneFibreMarker6_35Ordered
  · exact evenOneFibreMarker6_36Ordered
  · exact evenOneFibreMarker6_37Ordered
  · exact evenOneFibreMarker6_38Ordered
  · exact evenOneFibreMarker6_39Ordered
  · exact evenOneFibreMarker6_40Ordered
  · exact evenOneFibreMarker6_41Ordered
  · exact evenOneFibreMarker6_42Ordered
  · exact evenOneFibreMarker6_43Ordered
  · exact evenOneFibreMarker6_44Ordered
  · exact evenOneFibreMarker6_45Ordered
  · exact evenOneFibreMarker6_46Ordered
  · exact evenOneFibreMarker6_47Ordered
  · exact evenOneFibreMarker6_48Ordered
  · exact evenOneFibreMarker7_0Ordered
  · exact evenOneFibreMarker7_1Ordered
  · exact evenOneFibreMarker7_2Ordered
  · exact evenOneFibreMarker7_3Ordered
  · exact evenOneFibreMarker7_4Ordered
  · exact evenOneFibreMarker7_5Ordered
  · exact evenOneFibreMarker7_6Ordered
  · exact evenOneFibreMarker7_7Ordered
  · exact evenOneFibreMarker7_8Ordered
  · exact evenOneFibreMarker7_9Ordered
  · exact evenOneFibreMarker7_10Ordered
  · exact evenOneFibreMarker7_11Ordered
  · exact evenOneFibreMarker7_12Ordered
  · exact evenOneFibreMarker7_13Ordered
  · exact evenOneFibreMarker7_14Ordered
  · exact evenOneFibreMarker7_15Ordered
  · exact evenOneFibreMarker7_16Ordered
  · exact evenOneFibreMarker7_17Ordered
  · exact evenOneFibreMarker7_18Ordered
  · exact evenOneFibreMarker7_19Ordered
  · exact evenOneFibreMarker7_20Ordered
  · exact evenOneFibreMarker7_21Ordered
  · exact evenOneFibreMarker7_22Ordered
  · exact evenOneFibreMarker7_23Ordered
  · exact evenOneFibreMarker7_24Ordered
  · exact evenOneFibreMarker7_25Ordered
  · exact evenOneFibreMarker7_26Ordered
  · exact evenOneFibreMarker7_27Ordered
  · exact evenOneFibreMarker7_28Ordered
  · exact evenOneFibreMarker7_29Ordered
  · exact evenOneFibreMarker7_30Ordered
  · exact evenOneFibreMarker7_31Ordered
  · exact evenOneFibreMarker7_32Ordered
  · exact evenOneFibreMarker7_33Ordered
  · exact evenOneFibreMarker7_34Ordered
  · exact evenOneFibreMarker7_35Ordered
  · exact evenOneFibreMarker7_36Ordered
  · exact evenOneFibreMarker7_37Ordered
  · exact evenOneFibreMarker7_38Ordered
  · exact evenOneFibreMarker7_39Ordered
  · exact evenOneFibreMarker7_40Ordered
  · exact evenOneFibreMarker7_41Ordered
  · exact evenOneFibreMarker7_42Ordered
  · exact evenOneFibreMarker7_43Ordered
  · exact evenOneFibreMarker7_44Ordered
  · exact evenOneFibreMarker7_45Ordered
  · exact evenOneFibreMarker7_46Ordered
  · exact evenOneFibreMarker7_47Ordered
  · exact evenOneFibreMarker7_48Ordered
  · exact evenOneFibreMarker8_0Ordered
  · exact evenOneFibreMarker8_1Ordered
  · exact evenOneFibreMarker8_2Ordered
  · exact evenOneFibreMarker8_3Ordered
  · exact evenOneFibreMarker8_4Ordered
  · exact evenOneFibreMarker8_5Ordered
  · exact evenOneFibreMarker8_6Ordered
  · exact evenOneFibreMarker8_7Ordered
  · exact evenOneFibreMarker8_8Ordered
  · exact evenOneFibreMarker8_9Ordered
  · exact evenOneFibreMarker8_10Ordered
  · exact evenOneFibreMarker8_11Ordered
  · exact evenOneFibreMarker8_12Ordered
  · exact evenOneFibreMarker8_13Ordered
  · exact evenOneFibreMarker8_14Ordered
  · exact evenOneFibreMarker8_15Ordered
  · exact evenOneFibreMarker8_16Ordered
  · exact evenOneFibreMarker8_17Ordered
  · exact evenOneFibreMarker8_18Ordered
  · exact evenOneFibreMarker8_19Ordered
  · exact evenOneFibreMarker8_20Ordered
  · exact evenOneFibreMarker8_21Ordered
  · exact evenOneFibreMarker8_22Ordered
  · exact evenOneFibreMarker8_23Ordered
  · exact evenOneFibreMarker8_24Ordered
  · exact evenOneFibreMarker8_25Ordered
  · exact evenOneFibreMarker8_26Ordered
  · exact evenOneFibreMarker8_27Ordered
  · exact evenOneFibreMarker8_28Ordered
  · exact evenOneFibreMarker8_29Ordered
  · exact evenOneFibreMarker8_30Ordered
  · exact evenOneFibreMarker8_31Ordered
  · exact evenOneFibreMarker8_32Ordered
  · exact evenOneFibreMarker8_33Ordered
  · exact evenOneFibreMarker8_34Ordered
  · exact evenOneFibreMarker8_35Ordered
  · exact evenOneFibreMarker8_36Ordered
  · exact evenOneFibreMarker8_37Ordered
  · exact evenOneFibreMarker8_38Ordered
  · exact evenOneFibreMarker8_39Ordered
  · exact evenOneFibreMarker8_40Ordered
  · exact evenOneFibreMarker8_41Ordered
  · exact evenOneFibreMarker8_42Ordered
  · exact evenOneFibreMarker8_43Ordered
  · exact evenOneFibreMarker8_44Ordered
  · exact evenOneFibreMarker8_45Ordered
  · exact evenOneFibreMarker8_46Ordered
  · exact evenOneFibreMarker8_47Ordered
  · exact evenOneFibreMarker8_48Ordered

theorem projectsCells :
    GeneratedTailDiagonalCoverage.indexedMarker.ProjectsTailR263EvenOneCells cellTargets := by
  apply IndexedMarkerData.projectsTailR263EvenOneCells_of_range
  have hsize : GeneratedTailDiagonalCoverage.indexedMarker.values.size = 251583 := by decide
  rw [hsize]
  exact (IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0000) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0001) (cellProjection0002))))) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0003) (cellProjection0004))) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0005) (cellProjection0006))))))) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0007) (cellProjection0008))) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0009) (cellProjection0010))))) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0011) (cellProjection0012))) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0013) (cellProjection0014))))))))) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0015) (cellProjection0016))) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0017) (cellProjection0018))))) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0019) (cellProjection0020))) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0021) (cellProjection0022))))))) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0023) (cellProjection0024))) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0025) (cellProjection0026))))) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0027) (cellProjection0028))) ((IndexedMarkerData.tailR263EvenOneCellProjectionRangeAppend (cellProjection0029) (cellProjection0030))))))))))

theorem projectsFibres (cell : Fin 9) :
    (cellTargets cell).ProjectsModFortyNine (fibreTargets cell) := by
  fin_cases cell
  · exact fibreProjectionCell0
  · exact fibreProjectionCell1
  · exact fibreProjectionCell2
  · exact fibreProjectionCell3
  · exact fibreProjectionCell4
  · exact fibreProjectionCell5
  · exact fibreProjectionCell6
  · exact fibreProjectionCell7
  · exact fibreProjectionCell8

end Erdos848.GeneratedTailR263EvenOneDiagonal

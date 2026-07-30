import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.TargetData

namespace Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderRange0153Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0153Check :
    orderRange0153Tree.check evenOneMarker2_37 0 = true := by decide

theorem orderRange0153 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_37 0 135 := by
  simpa [orderRange0153Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0153Check

def orderRange0154Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0154Check :
    orderRange0154Tree.check evenOneMarker2_38 0 = true := by decide

theorem orderRange0154 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_38 0 131 := by
  simpa [orderRange0154Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0154Check

def orderRange0155Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0155Check :
    orderRange0155Tree.check evenOneMarker2_39 0 = true := by decide

theorem orderRange0155 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_39 0 133 := by
  simpa [orderRange0155Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0155Check

def orderRange0156Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0156Check :
    orderRange0156Tree.check evenOneMarker2_40 0 = true := by decide

theorem orderRange0156 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_40 0 154 := by
  simpa [orderRange0156Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0156Check

def orderRange0157Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0157Check :
    orderRange0157Tree.check evenOneMarker2_41 0 = true := by decide

theorem orderRange0157 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_41 0 128 := by
  simpa [orderRange0157Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0157Check

def orderRange0158Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0158Check :
    orderRange0158Tree.check evenOneMarker2_42 0 = true := by decide

theorem orderRange0158 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_42 0 143 := by
  simpa [orderRange0158Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0158Check

def orderRange0159Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0159Check :
    orderRange0159Tree.check evenOneMarker2_43 0 = true := by decide

theorem orderRange0159 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_43 0 120 := by
  simpa [orderRange0159Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0159Check

def orderRange0160Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0160Check :
    orderRange0160Tree.check evenOneMarker2_44 0 = true := by decide

theorem orderRange0160 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_44 0 135 := by
  simpa [orderRange0160Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0160Check

def orderRange0161Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0161Check :
    orderRange0161Tree.check evenOneMarker2_45 0 = true := by decide

theorem orderRange0161 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_45 0 138 := by
  simpa [orderRange0161Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0161Check

def orderRange0162Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0162Check :
    orderRange0162Tree.check evenOneMarker2_46 0 = true := by decide

theorem orderRange0162 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_46 0 138 := by
  simpa [orderRange0162Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0162Check

def orderRange0163Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0163Check :
    orderRange0163Tree.check evenOneMarker2_47 0 = true := by decide

theorem orderRange0163 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_47 0 141 := by
  simpa [orderRange0163Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0163Check

def orderRange0164Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0164Check :
    orderRange0164Tree.check evenOneMarker2_48 0 = true := by decide

theorem orderRange0164 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_48 0 144 := by
  simpa [orderRange0164Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0164Check

def orderRange0165Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0165Check :
    orderRange0165Tree.check evenOneMarker3_0 0 = true := by decide

theorem orderRange0165 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_0 0 143 := by
  simpa [orderRange0165Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0165Check

def orderRange0166Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0166Check :
    orderRange0166Tree.check evenOneMarker3_1 0 = true := by decide

theorem orderRange0166 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_1 0 145 := by
  simpa [orderRange0166Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0166Check

def orderRange0167Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0167Check :
    orderRange0167Tree.check evenOneMarker3_2 0 = true := by decide

theorem orderRange0167 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_2 0 126 := by
  simpa [orderRange0167Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0167Check

def orderRange0168Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0168Check :
    orderRange0168Tree.check evenOneMarker3_3 0 = true := by decide

theorem orderRange0168 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_3 0 128 := by
  simpa [orderRange0168Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0168Check

def orderRange0169Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0169Check :
    orderRange0169Tree.check evenOneMarker3_4 0 = true := by decide

theorem orderRange0169 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_4 0 141 := by
  simpa [orderRange0169Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0169Check

def orderRange0170Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0170Check :
    orderRange0170Tree.check evenOneMarker3_5 0 = true := by decide

theorem orderRange0170 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_5 0 128 := by
  simpa [orderRange0170Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0170Check

def orderRange0171Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0171Check :
    orderRange0171Tree.check evenOneMarker3_6 0 = true := by decide

theorem orderRange0171 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_6 0 120 := by
  simpa [orderRange0171Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0171Check

def orderRange0172Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0172Check :
    orderRange0172Tree.check evenOneMarker3_7 0 = true := by decide

theorem orderRange0172 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_7 0 132 := by
  simpa [orderRange0172Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0172Check

def orderRange0173Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0173Check :
    orderRange0173Tree.check evenOneMarker3_8 0 = true := by decide

theorem orderRange0173 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_8 0 142 := by
  simpa [orderRange0173Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0173Check

def orderRange0174Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0174Check :
    orderRange0174Tree.check evenOneMarker3_9 0 = true := by decide

theorem orderRange0174 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_9 0 148 := by
  simpa [orderRange0174Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0174Check

def orderRange0175Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0175Check :
    orderRange0175Tree.check evenOneMarker3_10 0 = true := by decide

theorem orderRange0175 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_10 0 149 := by
  simpa [orderRange0175Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0175Check

def orderRange0176Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0176Check :
    orderRange0176Tree.check evenOneMarker3_11 0 = true := by decide

theorem orderRange0176 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_11 0 137 := by
  simpa [orderRange0176Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0176Check

def orderRange0177Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0177Check :
    orderRange0177Tree.check evenOneMarker3_12 0 = true := by decide

theorem orderRange0177 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_12 0 125 := by
  simpa [orderRange0177Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0177Check

def orderRange0178Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0178Check :
    orderRange0178Tree.check evenOneMarker3_13 0 = true := by decide

theorem orderRange0178 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_13 0 132 := by
  simpa [orderRange0178Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0178Check

def orderRange0179Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0179Check :
    orderRange0179Tree.check evenOneMarker3_14 0 = true := by decide

theorem orderRange0179 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_14 0 131 := by
  simpa [orderRange0179Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0179Check

def orderRange0180Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0180Check :
    orderRange0180Tree.check evenOneMarker3_15 0 = true := by decide

theorem orderRange0180 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_15 0 139 := by
  simpa [orderRange0180Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0180Check

def orderRange0181Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0181Check :
    orderRange0181Tree.check evenOneMarker3_16 0 = true := by decide

theorem orderRange0181 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_16 0 138 := by
  simpa [orderRange0181Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0181Check

def orderRange0182Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0182Check :
    orderRange0182Tree.check evenOneMarker3_17 0 = true := by decide

theorem orderRange0182 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_17 0 130 := by
  simpa [orderRange0182Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0182Check

def orderRange0183Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0183Check :
    orderRange0183Tree.check evenOneMarker3_18 0 = true := by decide

theorem orderRange0183 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_18 0 131 := by
  simpa [orderRange0183Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0183Check

def orderRange0184Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0184Check :
    orderRange0184Tree.check evenOneMarker3_19 0 = true := by decide

theorem orderRange0184 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_19 0 121 := by
  simpa [orderRange0184Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0184Check

def orderRange0185Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0185Check :
    orderRange0185Tree.check evenOneMarker3_20 0 = true := by decide

theorem orderRange0185 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_20 0 135 := by
  simpa [orderRange0185Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0185Check

def orderRange0186Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0186Check :
    orderRange0186Tree.check evenOneMarker3_21 0 = true := by decide

theorem orderRange0186 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_21 0 149 := by
  simpa [orderRange0186Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0186Check

def orderRange0187Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0187Check :
    orderRange0187Tree.check evenOneMarker3_22 0 = true := by decide

theorem orderRange0187 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_22 0 122 := by
  simpa [orderRange0187Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0187Check

def orderRange0188Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0188Check :
    orderRange0188Tree.check evenOneMarker3_23 0 = true := by decide

theorem orderRange0188 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_23 0 130 := by
  simpa [orderRange0188Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0188Check

def orderRange0189Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0189Check :
    orderRange0189Tree.check evenOneMarker3_24 0 = true := by decide

theorem orderRange0189 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_24 0 130 := by
  simpa [orderRange0189Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0189Check

def orderRange0190Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0190Check :
    orderRange0190Tree.check evenOneMarker3_25 0 = true := by decide

theorem orderRange0190 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_25 0 122 := by
  simpa [orderRange0190Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0190Check

def orderRange0191Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0191Check :
    orderRange0191Tree.check evenOneMarker3_26 0 = true := by decide

theorem orderRange0191 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_26 0 130 := by
  simpa [orderRange0191Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0191Check

def orderRange0192Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0192Check :
    orderRange0192Tree.check evenOneMarker3_27 0 = true := by decide

theorem orderRange0192 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_27 0 139 := by
  simpa [orderRange0192Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0192Check

def orderRange0193Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0193Check :
    orderRange0193Tree.check evenOneMarker3_28 0 = true := by decide

theorem orderRange0193 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_28 0 147 := by
  simpa [orderRange0193Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0193Check

def orderRange0194Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0194Check :
    orderRange0194Tree.check evenOneMarker3_29 0 = true := by decide

theorem orderRange0194 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_29 0 131 := by
  simpa [orderRange0194Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0194Check

def orderRange0195Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0195Check :
    orderRange0195Tree.check evenOneMarker3_30 0 = true := by decide

theorem orderRange0195 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_30 0 143 := by
  simpa [orderRange0195Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0195Check

def orderRange0196Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0196Check :
    orderRange0196Tree.check evenOneMarker3_31 0 = true := by decide

theorem orderRange0196 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_31 0 132 := by
  simpa [orderRange0196Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0196Check

def orderRange0197Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0197Check :
    orderRange0197Tree.check evenOneMarker3_32 0 = true := by decide

theorem orderRange0197 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_32 0 138 := by
  simpa [orderRange0197Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0197Check

def orderRange0198Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0198Check :
    orderRange0198Tree.check evenOneMarker3_33 0 = true := by decide

theorem orderRange0198 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_33 0 130 := by
  simpa [orderRange0198Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0198Check

def orderRange0199Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0199Check :
    orderRange0199Tree.check evenOneMarker3_34 0 = true := by decide

theorem orderRange0199 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_34 0 134 := by
  simpa [orderRange0199Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0199Check

def orderRange0200Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0200Check :
    orderRange0200Tree.check evenOneMarker3_35 0 = true := by decide

theorem orderRange0200 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_35 0 121 := by
  simpa [orderRange0200Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0200Check

def orderRange0201Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0201Check :
    orderRange0201Tree.check evenOneMarker3_36 0 = true := by decide

theorem orderRange0201 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_36 0 125 := by
  simpa [orderRange0201Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0201Check

def orderRange0202Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0202Check :
    orderRange0202Tree.check evenOneMarker3_37 0 = true := by decide

theorem orderRange0202 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_37 0 141 := by
  simpa [orderRange0202Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0202Check

def orderRange0203Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0203Check :
    orderRange0203Tree.check evenOneMarker3_38 0 = true := by decide

theorem orderRange0203 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_38 0 137 := by
  simpa [orderRange0203Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0203Check

def orderRange0204Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0204Check :
    orderRange0204Tree.check evenOneMarker3_39 0 = true := by decide

theorem orderRange0204 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_39 0 141 := by
  simpa [orderRange0204Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0204Check

def orderRange0205Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0205Check :
    orderRange0205Tree.check evenOneMarker3_40 0 = true := by decide

theorem orderRange0205 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_40 0 145 := by
  simpa [orderRange0205Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0205Check

def orderRange0206Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0206Check :
    orderRange0206Tree.check evenOneMarker3_41 0 = true := by decide

theorem orderRange0206 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_41 0 140 := by
  simpa [orderRange0206Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0206Check

def orderRange0207Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0207Check :
    orderRange0207Tree.check evenOneMarker3_42 0 = true := by decide

theorem orderRange0207 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_42 0 111 := by
  simpa [orderRange0207Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0207Check

def orderRange0208Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0208Check :
    orderRange0208Tree.check evenOneMarker3_43 0 = true := by decide

theorem orderRange0208 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_43 0 133 := by
  simpa [orderRange0208Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0208Check

def orderRange0209Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0209Check :
    orderRange0209Tree.check evenOneMarker3_44 0 = true := by decide

theorem orderRange0209 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_44 0 134 := by
  simpa [orderRange0209Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0209Check

def orderRange0210Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0210Check :
    orderRange0210Tree.check evenOneMarker3_45 0 = true := by decide

theorem orderRange0210 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_45 0 147 := by
  simpa [orderRange0210Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0210Check

def orderRange0211Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0211Check :
    orderRange0211Tree.check evenOneMarker3_46 0 = true := by decide

theorem orderRange0211 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_46 0 122 := by
  simpa [orderRange0211Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0211Check

def orderRange0212Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0212Check :
    orderRange0212Tree.check evenOneMarker3_47 0 = true := by decide

theorem orderRange0212 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_47 0 125 := by
  simpa [orderRange0212Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0212Check

def orderRange0213Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0213Check :
    orderRange0213Tree.check evenOneMarker3_48 0 = true := by decide

theorem orderRange0213 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker3_48 0 121 := by
  simpa [orderRange0213Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0213Check

theorem evenOneMarker2_37Ordered : evenOneMarker2_37.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0153

theorem evenOneMarker2_38Ordered : evenOneMarker2_38.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0154

theorem evenOneMarker2_39Ordered : evenOneMarker2_39.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 132) (by decide)
  exact orderRange0155

theorem evenOneMarker2_40Ordered : evenOneMarker2_40.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 153) (by decide)
  exact orderRange0156

theorem evenOneMarker2_41Ordered : evenOneMarker2_41.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 127) (by decide)
  exact orderRange0157

theorem evenOneMarker2_42Ordered : evenOneMarker2_42.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 142) (by decide)
  exact orderRange0158

theorem evenOneMarker2_43Ordered : evenOneMarker2_43.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 119) (by decide)
  exact orderRange0159

theorem evenOneMarker2_44Ordered : evenOneMarker2_44.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0160

theorem evenOneMarker2_45Ordered : evenOneMarker2_45.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 137) (by decide)
  exact orderRange0161

theorem evenOneMarker2_46Ordered : evenOneMarker2_46.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 137) (by decide)
  exact orderRange0162

theorem evenOneMarker2_47Ordered : evenOneMarker2_47.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 140) (by decide)
  exact orderRange0163

theorem evenOneMarker2_48Ordered : evenOneMarker2_48.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 143) (by decide)
  exact orderRange0164

theorem evenOneMarker3_0Ordered : evenOneMarker3_0.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 142) (by decide)
  exact orderRange0165

theorem evenOneMarker3_1Ordered : evenOneMarker3_1.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 144) (by decide)
  exact orderRange0166

theorem evenOneMarker3_2Ordered : evenOneMarker3_2.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 125) (by decide)
  exact orderRange0167

theorem evenOneMarker3_3Ordered : evenOneMarker3_3.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 127) (by decide)
  exact orderRange0168

theorem evenOneMarker3_4Ordered : evenOneMarker3_4.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 140) (by decide)
  exact orderRange0169

theorem evenOneMarker3_5Ordered : evenOneMarker3_5.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 127) (by decide)
  exact orderRange0170

theorem evenOneMarker3_6Ordered : evenOneMarker3_6.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 119) (by decide)
  exact orderRange0171

theorem evenOneMarker3_7Ordered : evenOneMarker3_7.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 131) (by decide)
  exact orderRange0172

theorem evenOneMarker3_8Ordered : evenOneMarker3_8.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 141) (by decide)
  exact orderRange0173

theorem evenOneMarker3_9Ordered : evenOneMarker3_9.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 147) (by decide)
  exact orderRange0174

theorem evenOneMarker3_10Ordered : evenOneMarker3_10.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 148) (by decide)
  exact orderRange0175

theorem evenOneMarker3_11Ordered : evenOneMarker3_11.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 136) (by decide)
  exact orderRange0176

theorem evenOneMarker3_12Ordered : evenOneMarker3_12.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 124) (by decide)
  exact orderRange0177

theorem evenOneMarker3_13Ordered : evenOneMarker3_13.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 131) (by decide)
  exact orderRange0178

theorem evenOneMarker3_14Ordered : evenOneMarker3_14.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0179

theorem evenOneMarker3_15Ordered : evenOneMarker3_15.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 138) (by decide)
  exact orderRange0180

theorem evenOneMarker3_16Ordered : evenOneMarker3_16.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 137) (by decide)
  exact orderRange0181

theorem evenOneMarker3_17Ordered : evenOneMarker3_17.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 129) (by decide)
  exact orderRange0182

theorem evenOneMarker3_18Ordered : evenOneMarker3_18.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0183

theorem evenOneMarker3_19Ordered : evenOneMarker3_19.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 120) (by decide)
  exact orderRange0184

theorem evenOneMarker3_20Ordered : evenOneMarker3_20.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0185

theorem evenOneMarker3_21Ordered : evenOneMarker3_21.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 148) (by decide)
  exact orderRange0186

theorem evenOneMarker3_22Ordered : evenOneMarker3_22.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 121) (by decide)
  exact orderRange0187

theorem evenOneMarker3_23Ordered : evenOneMarker3_23.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 129) (by decide)
  exact orderRange0188

theorem evenOneMarker3_24Ordered : evenOneMarker3_24.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 129) (by decide)
  exact orderRange0189

theorem evenOneMarker3_25Ordered : evenOneMarker3_25.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 121) (by decide)
  exact orderRange0190

theorem evenOneMarker3_26Ordered : evenOneMarker3_26.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 129) (by decide)
  exact orderRange0191

theorem evenOneMarker3_27Ordered : evenOneMarker3_27.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 138) (by decide)
  exact orderRange0192

theorem evenOneMarker3_28Ordered : evenOneMarker3_28.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 146) (by decide)
  exact orderRange0193

theorem evenOneMarker3_29Ordered : evenOneMarker3_29.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0194

theorem evenOneMarker3_30Ordered : evenOneMarker3_30.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 142) (by decide)
  exact orderRange0195

theorem evenOneMarker3_31Ordered : evenOneMarker3_31.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 131) (by decide)
  exact orderRange0196

theorem evenOneMarker3_32Ordered : evenOneMarker3_32.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 137) (by decide)
  exact orderRange0197

theorem evenOneMarker3_33Ordered : evenOneMarker3_33.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 129) (by decide)
  exact orderRange0198

theorem evenOneMarker3_34Ordered : evenOneMarker3_34.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 133) (by decide)
  exact orderRange0199

theorem evenOneMarker3_35Ordered : evenOneMarker3_35.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 120) (by decide)
  exact orderRange0200

theorem evenOneMarker3_36Ordered : evenOneMarker3_36.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 124) (by decide)
  exact orderRange0201

theorem evenOneMarker3_37Ordered : evenOneMarker3_37.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 140) (by decide)
  exact orderRange0202

theorem evenOneMarker3_38Ordered : evenOneMarker3_38.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 136) (by decide)
  exact orderRange0203

theorem evenOneMarker3_39Ordered : evenOneMarker3_39.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 140) (by decide)
  exact orderRange0204

theorem evenOneMarker3_40Ordered : evenOneMarker3_40.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 144) (by decide)
  exact orderRange0205

theorem evenOneMarker3_41Ordered : evenOneMarker3_41.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 139) (by decide)
  exact orderRange0206

theorem evenOneMarker3_42Ordered : evenOneMarker3_42.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 110) (by decide)
  exact orderRange0207

theorem evenOneMarker3_43Ordered : evenOneMarker3_43.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 132) (by decide)
  exact orderRange0208

theorem evenOneMarker3_44Ordered : evenOneMarker3_44.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 133) (by decide)
  exact orderRange0209

theorem evenOneMarker3_45Ordered : evenOneMarker3_45.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 146) (by decide)
  exact orderRange0210

theorem evenOneMarker3_46Ordered : evenOneMarker3_46.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 121) (by decide)
  exact orderRange0211

theorem evenOneMarker3_47Ordered : evenOneMarker3_47.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 124) (by decide)
  exact orderRange0212

theorem evenOneMarker3_48Ordered : evenOneMarker3_48.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 120) (by decide)
  exact orderRange0213

end Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms

import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.TargetData

namespace Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderRange0276Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0276Check :
    orderRange0276Tree.check evenOneMarker5_13 0 = true := by decide

theorem orderRange0276 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_13 0 128 := by
  simpa [orderRange0276Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0276Check

def orderRange0277Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0277Check :
    orderRange0277Tree.check evenOneMarker5_14 0 = true := by decide

theorem orderRange0277 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_14 0 114 := by
  simpa [orderRange0277Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0277Check

def orderRange0278Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0278Check :
    orderRange0278Tree.check evenOneMarker5_15 0 = true := by decide

theorem orderRange0278 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_15 0 127 := by
  simpa [orderRange0278Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0278Check

def orderRange0279Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0279Check :
    orderRange0279Tree.check evenOneMarker5_16 0 = true := by decide

theorem orderRange0279 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_16 0 137 := by
  simpa [orderRange0279Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0279Check

def orderRange0280Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0280Check :
    orderRange0280Tree.check evenOneMarker5_17 0 = true := by decide

theorem orderRange0280 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_17 0 139 := by
  simpa [orderRange0280Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0280Check

def orderRange0281Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0281Check :
    orderRange0281Tree.check evenOneMarker5_18 0 = true := by decide

theorem orderRange0281 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_18 0 124 := by
  simpa [orderRange0281Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0281Check

def orderRange0282Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0282Check :
    orderRange0282Tree.check evenOneMarker5_19 0 = true := by decide

theorem orderRange0282 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_19 0 130 := by
  simpa [orderRange0282Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0282Check

def orderRange0283Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0283Check :
    orderRange0283Tree.check evenOneMarker5_20 0 = true := by decide

theorem orderRange0283 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_20 0 143 := by
  simpa [orderRange0283Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0283Check

def orderRange0284Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0284Check :
    orderRange0284Tree.check evenOneMarker5_21 0 = true := by decide

theorem orderRange0284 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_21 0 144 := by
  simpa [orderRange0284Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0284Check

def orderRange0285Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0285Check :
    orderRange0285Tree.check evenOneMarker5_22 0 = true := by decide

theorem orderRange0285 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_22 0 141 := by
  simpa [orderRange0285Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0285Check

def orderRange0286Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0286Check :
    orderRange0286Tree.check evenOneMarker5_23 0 = true := by decide

theorem orderRange0286 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_23 0 133 := by
  simpa [orderRange0286Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0286Check

def orderRange0287Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0287Check :
    orderRange0287Tree.check evenOneMarker5_24 0 = true := by decide

theorem orderRange0287 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_24 0 146 := by
  simpa [orderRange0287Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0287Check

def orderRange0288Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0288Check :
    orderRange0288Tree.check evenOneMarker5_25 0 = true := by decide

theorem orderRange0288 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_25 0 131 := by
  simpa [orderRange0288Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0288Check

def orderRange0289Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0289Check :
    orderRange0289Tree.check evenOneMarker5_26 0 = true := by decide

theorem orderRange0289 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_26 0 149 := by
  simpa [orderRange0289Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0289Check

def orderRange0290Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0290Check :
    orderRange0290Tree.check evenOneMarker5_27 0 = true := by decide

theorem orderRange0290 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_27 0 125 := by
  simpa [orderRange0290Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0290Check

def orderRange0291Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0291Check :
    orderRange0291Tree.check evenOneMarker5_28 0 = true := by decide

theorem orderRange0291 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_28 0 147 := by
  simpa [orderRange0291Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0291Check

def orderRange0292Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0292Check :
    orderRange0292Tree.check evenOneMarker5_29 0 = true := by decide

theorem orderRange0292 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_29 0 139 := by
  simpa [orderRange0292Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0292Check

def orderRange0293Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0293Check :
    orderRange0293Tree.check evenOneMarker5_30 0 = true := by decide

theorem orderRange0293 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_30 0 137 := by
  simpa [orderRange0293Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0293Check

def orderRange0294Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0294Check :
    orderRange0294Tree.check evenOneMarker5_31 0 = true := by decide

theorem orderRange0294 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_31 0 126 := by
  simpa [orderRange0294Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0294Check

def orderRange0295Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0295Check :
    orderRange0295Tree.check evenOneMarker5_32 0 = true := by decide

theorem orderRange0295 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_32 0 136 := by
  simpa [orderRange0295Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0295Check

def orderRange0296Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0296Check :
    orderRange0296Tree.check evenOneMarker5_33 0 = true := by decide

theorem orderRange0296 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_33 0 144 := by
  simpa [orderRange0296Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0296Check

def orderRange0297Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0297Check :
    orderRange0297Tree.check evenOneMarker5_34 0 = true := by decide

theorem orderRange0297 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_34 0 135 := by
  simpa [orderRange0297Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0297Check

def orderRange0298Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0298Check :
    orderRange0298Tree.check evenOneMarker5_35 0 = true := by decide

theorem orderRange0298 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_35 0 116 := by
  simpa [orderRange0298Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0298Check

def orderRange0299Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0299Check :
    orderRange0299Tree.check evenOneMarker5_36 0 = true := by decide

theorem orderRange0299 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_36 0 137 := by
  simpa [orderRange0299Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0299Check

def orderRange0300Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0300Check :
    orderRange0300Tree.check evenOneMarker5_37 0 = true := by decide

theorem orderRange0300 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_37 0 130 := by
  simpa [orderRange0300Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0300Check

def orderRange0301Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0301Check :
    orderRange0301Tree.check evenOneMarker5_38 0 = true := by decide

theorem orderRange0301 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_38 0 119 := by
  simpa [orderRange0301Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0301Check

def orderRange0302Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0302Check :
    orderRange0302Tree.check evenOneMarker5_39 0 = true := by decide

theorem orderRange0302 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_39 0 127 := by
  simpa [orderRange0302Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0302Check

def orderRange0303Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0303Check :
    orderRange0303Tree.check evenOneMarker5_40 0 = true := by decide

theorem orderRange0303 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_40 0 146 := by
  simpa [orderRange0303Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0303Check

def orderRange0304Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0304Check :
    orderRange0304Tree.check evenOneMarker5_41 0 = true := by decide

theorem orderRange0304 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_41 0 135 := by
  simpa [orderRange0304Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0304Check

def orderRange0305Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0305Check :
    orderRange0305Tree.check evenOneMarker5_42 0 = true := by decide

theorem orderRange0305 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_42 0 119 := by
  simpa [orderRange0305Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0305Check

def orderRange0306Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0306Check :
    orderRange0306Tree.check evenOneMarker5_43 0 = true := by decide

theorem orderRange0306 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_43 0 145 := by
  simpa [orderRange0306Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0306Check

def orderRange0307Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0307Check :
    orderRange0307Tree.check evenOneMarker5_44 0 = true := by decide

theorem orderRange0307 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_44 0 120 := by
  simpa [orderRange0307Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0307Check

def orderRange0308Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0308Check :
    orderRange0308Tree.check evenOneMarker5_45 0 = true := by decide

theorem orderRange0308 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_45 0 139 := by
  simpa [orderRange0308Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0308Check

def orderRange0309Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0309Check :
    orderRange0309Tree.check evenOneMarker5_46 0 = true := by decide

theorem orderRange0309 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_46 0 128 := by
  simpa [orderRange0309Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0309Check

def orderRange0310Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0310Check :
    orderRange0310Tree.check evenOneMarker5_47 0 = true := by decide

theorem orderRange0310 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_47 0 131 := by
  simpa [orderRange0310Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0310Check

def orderRange0311Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0311Check :
    orderRange0311Tree.check evenOneMarker5_48 0 = true := by decide

theorem orderRange0311 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker5_48 0 134 := by
  simpa [orderRange0311Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0311Check

def orderRange0312Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0312Check :
    orderRange0312Tree.check evenOneMarker6_0 0 = true := by decide

theorem orderRange0312 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_0 0 136 := by
  simpa [orderRange0312Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0312Check

def orderRange0313Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0313Check :
    orderRange0313Tree.check evenOneMarker6_1 0 = true := by decide

theorem orderRange0313 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_1 0 130 := by
  simpa [orderRange0313Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0313Check

def orderRange0314Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0314Check :
    orderRange0314Tree.check evenOneMarker6_2 0 = true := by decide

theorem orderRange0314 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_2 0 145 := by
  simpa [orderRange0314Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0314Check

def orderRange0315Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0315Check :
    orderRange0315Tree.check evenOneMarker6_3 0 = true := by decide

theorem orderRange0315 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_3 0 133 := by
  simpa [orderRange0315Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0315Check

def orderRange0316Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0316Check :
    orderRange0316Tree.check evenOneMarker6_4 0 = true := by decide

theorem orderRange0316 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_4 0 119 := by
  simpa [orderRange0316Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0316Check

def orderRange0317Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0317Check :
    orderRange0317Tree.check evenOneMarker6_5 0 = true := by decide

theorem orderRange0317 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_5 0 124 := by
  simpa [orderRange0317Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0317Check

def orderRange0318Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0318Check :
    orderRange0318Tree.check evenOneMarker6_6 0 = true := by decide

theorem orderRange0318 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_6 0 126 := by
  simpa [orderRange0318Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0318Check

def orderRange0319Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0319Check :
    orderRange0319Tree.check evenOneMarker6_7 0 = true := by decide

theorem orderRange0319 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_7 0 141 := by
  simpa [orderRange0319Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0319Check

def orderRange0320Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0320Check :
    orderRange0320Tree.check evenOneMarker6_8 0 = true := by decide

theorem orderRange0320 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_8 0 136 := by
  simpa [orderRange0320Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0320Check

def orderRange0321Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0321Check :
    orderRange0321Tree.check evenOneMarker6_9 0 = true := by decide

theorem orderRange0321 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_9 0 129 := by
  simpa [orderRange0321Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0321Check

def orderRange0322Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0322Check :
    orderRange0322Tree.check evenOneMarker6_10 0 = true := by decide

theorem orderRange0322 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_10 0 122 := by
  simpa [orderRange0322Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0322Check

def orderRange0323Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0323Check :
    orderRange0323Tree.check evenOneMarker6_11 0 = true := by decide

theorem orderRange0323 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_11 0 131 := by
  simpa [orderRange0323Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0323Check

def orderRange0324Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0324Check :
    orderRange0324Tree.check evenOneMarker6_12 0 = true := by decide

theorem orderRange0324 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_12 0 131 := by
  simpa [orderRange0324Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0324Check

def orderRange0325Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0325Check :
    orderRange0325Tree.check evenOneMarker6_13 0 = true := by decide

theorem orderRange0325 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_13 0 121 := by
  simpa [orderRange0325Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0325Check

def orderRange0326Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0326Check :
    orderRange0326Tree.check evenOneMarker6_14 0 = true := by decide

theorem orderRange0326 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_14 0 111 := by
  simpa [orderRange0326Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0326Check

def orderRange0327Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0327Check :
    orderRange0327Tree.check evenOneMarker6_15 0 = true := by decide

theorem orderRange0327 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_15 0 137 := by
  simpa [orderRange0327Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0327Check

def orderRange0328Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0328Check :
    orderRange0328Tree.check evenOneMarker6_16 0 = true := by decide

theorem orderRange0328 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_16 0 128 := by
  simpa [orderRange0328Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0328Check

def orderRange0329Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0329Check :
    orderRange0329Tree.check evenOneMarker6_17 0 = true := by decide

theorem orderRange0329 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_17 0 129 := by
  simpa [orderRange0329Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0329Check

def orderRange0330Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0330Check :
    orderRange0330Tree.check evenOneMarker6_18 0 = true := by decide

theorem orderRange0330 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_18 0 135 := by
  simpa [orderRange0330Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0330Check

def orderRange0331Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0331Check :
    orderRange0331Tree.check evenOneMarker6_19 0 = true := by decide

theorem orderRange0331 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_19 0 132 := by
  simpa [orderRange0331Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0331Check

def orderRange0332Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0332Check :
    orderRange0332Tree.check evenOneMarker6_20 0 = true := by decide

theorem orderRange0332 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_20 0 135 := by
  simpa [orderRange0332Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0332Check

def orderRange0333Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0333Check :
    orderRange0333Tree.check evenOneMarker6_21 0 = true := by decide

theorem orderRange0333 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_21 0 131 := by
  simpa [orderRange0333Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0333Check

def orderRange0334Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0334Check :
    orderRange0334Tree.check evenOneMarker6_22 0 = true := by decide

theorem orderRange0334 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_22 0 130 := by
  simpa [orderRange0334Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0334Check

def orderRange0335Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0335Check :
    orderRange0335Tree.check evenOneMarker6_23 0 = true := by decide

theorem orderRange0335 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_23 0 131 := by
  simpa [orderRange0335Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0335Check

def orderRange0336Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0336Check :
    orderRange0336Tree.check evenOneMarker6_24 0 = true := by decide

theorem orderRange0336 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_24 0 138 := by
  simpa [orderRange0336Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0336Check

def orderRange0337Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0337Check :
    orderRange0337Tree.check evenOneMarker6_25 0 = true := by decide

theorem orderRange0337 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker6_25 0 125 := by
  simpa [orderRange0337Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0337Check

theorem evenOneMarker5_13Ordered : evenOneMarker5_13.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 127) (by decide)
  exact orderRange0276

theorem evenOneMarker5_14Ordered : evenOneMarker5_14.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 113) (by decide)
  exact orderRange0277

theorem evenOneMarker5_15Ordered : evenOneMarker5_15.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 126) (by decide)
  exact orderRange0278

theorem evenOneMarker5_16Ordered : evenOneMarker5_16.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 136) (by decide)
  exact orderRange0279

theorem evenOneMarker5_17Ordered : evenOneMarker5_17.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 138) (by decide)
  exact orderRange0280

theorem evenOneMarker5_18Ordered : evenOneMarker5_18.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 123) (by decide)
  exact orderRange0281

theorem evenOneMarker5_19Ordered : evenOneMarker5_19.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 129) (by decide)
  exact orderRange0282

theorem evenOneMarker5_20Ordered : evenOneMarker5_20.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 142) (by decide)
  exact orderRange0283

theorem evenOneMarker5_21Ordered : evenOneMarker5_21.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 143) (by decide)
  exact orderRange0284

theorem evenOneMarker5_22Ordered : evenOneMarker5_22.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 140) (by decide)
  exact orderRange0285

theorem evenOneMarker5_23Ordered : evenOneMarker5_23.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 132) (by decide)
  exact orderRange0286

theorem evenOneMarker5_24Ordered : evenOneMarker5_24.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 145) (by decide)
  exact orderRange0287

theorem evenOneMarker5_25Ordered : evenOneMarker5_25.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0288

theorem evenOneMarker5_26Ordered : evenOneMarker5_26.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 148) (by decide)
  exact orderRange0289

theorem evenOneMarker5_27Ordered : evenOneMarker5_27.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 124) (by decide)
  exact orderRange0290

theorem evenOneMarker5_28Ordered : evenOneMarker5_28.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 146) (by decide)
  exact orderRange0291

theorem evenOneMarker5_29Ordered : evenOneMarker5_29.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 138) (by decide)
  exact orderRange0292

theorem evenOneMarker5_30Ordered : evenOneMarker5_30.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 136) (by decide)
  exact orderRange0293

theorem evenOneMarker5_31Ordered : evenOneMarker5_31.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 125) (by decide)
  exact orderRange0294

theorem evenOneMarker5_32Ordered : evenOneMarker5_32.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 135) (by decide)
  exact orderRange0295

theorem evenOneMarker5_33Ordered : evenOneMarker5_33.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 143) (by decide)
  exact orderRange0296

theorem evenOneMarker5_34Ordered : evenOneMarker5_34.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0297

theorem evenOneMarker5_35Ordered : evenOneMarker5_35.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 115) (by decide)
  exact orderRange0298

theorem evenOneMarker5_36Ordered : evenOneMarker5_36.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 136) (by decide)
  exact orderRange0299

theorem evenOneMarker5_37Ordered : evenOneMarker5_37.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 129) (by decide)
  exact orderRange0300

theorem evenOneMarker5_38Ordered : evenOneMarker5_38.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 118) (by decide)
  exact orderRange0301

theorem evenOneMarker5_39Ordered : evenOneMarker5_39.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 126) (by decide)
  exact orderRange0302

theorem evenOneMarker5_40Ordered : evenOneMarker5_40.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 145) (by decide)
  exact orderRange0303

theorem evenOneMarker5_41Ordered : evenOneMarker5_41.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0304

theorem evenOneMarker5_42Ordered : evenOneMarker5_42.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 118) (by decide)
  exact orderRange0305

theorem evenOneMarker5_43Ordered : evenOneMarker5_43.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 144) (by decide)
  exact orderRange0306

theorem evenOneMarker5_44Ordered : evenOneMarker5_44.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 119) (by decide)
  exact orderRange0307

theorem evenOneMarker5_45Ordered : evenOneMarker5_45.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 138) (by decide)
  exact orderRange0308

theorem evenOneMarker5_46Ordered : evenOneMarker5_46.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 127) (by decide)
  exact orderRange0309

theorem evenOneMarker5_47Ordered : evenOneMarker5_47.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0310

theorem evenOneMarker5_48Ordered : evenOneMarker5_48.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 133) (by decide)
  exact orderRange0311

theorem evenOneMarker6_0Ordered : evenOneMarker6_0.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 135) (by decide)
  exact orderRange0312

theorem evenOneMarker6_1Ordered : evenOneMarker6_1.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 129) (by decide)
  exact orderRange0313

theorem evenOneMarker6_2Ordered : evenOneMarker6_2.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 144) (by decide)
  exact orderRange0314

theorem evenOneMarker6_3Ordered : evenOneMarker6_3.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 132) (by decide)
  exact orderRange0315

theorem evenOneMarker6_4Ordered : evenOneMarker6_4.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 118) (by decide)
  exact orderRange0316

theorem evenOneMarker6_5Ordered : evenOneMarker6_5.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 123) (by decide)
  exact orderRange0317

theorem evenOneMarker6_6Ordered : evenOneMarker6_6.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 125) (by decide)
  exact orderRange0318

theorem evenOneMarker6_7Ordered : evenOneMarker6_7.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 140) (by decide)
  exact orderRange0319

theorem evenOneMarker6_8Ordered : evenOneMarker6_8.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 135) (by decide)
  exact orderRange0320

theorem evenOneMarker6_9Ordered : evenOneMarker6_9.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 128) (by decide)
  exact orderRange0321

theorem evenOneMarker6_10Ordered : evenOneMarker6_10.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 121) (by decide)
  exact orderRange0322

theorem evenOneMarker6_11Ordered : evenOneMarker6_11.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0323

theorem evenOneMarker6_12Ordered : evenOneMarker6_12.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0324

theorem evenOneMarker6_13Ordered : evenOneMarker6_13.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 120) (by decide)
  exact orderRange0325

theorem evenOneMarker6_14Ordered : evenOneMarker6_14.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 110) (by decide)
  exact orderRange0326

theorem evenOneMarker6_15Ordered : evenOneMarker6_15.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 136) (by decide)
  exact orderRange0327

theorem evenOneMarker6_16Ordered : evenOneMarker6_16.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 127) (by decide)
  exact orderRange0328

theorem evenOneMarker6_17Ordered : evenOneMarker6_17.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 128) (by decide)
  exact orderRange0329

theorem evenOneMarker6_18Ordered : evenOneMarker6_18.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0330

theorem evenOneMarker6_19Ordered : evenOneMarker6_19.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 131) (by decide)
  exact orderRange0331

theorem evenOneMarker6_20Ordered : evenOneMarker6_20.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0332

theorem evenOneMarker6_21Ordered : evenOneMarker6_21.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0333

theorem evenOneMarker6_22Ordered : evenOneMarker6_22.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 129) (by decide)
  exact orderRange0334

theorem evenOneMarker6_23Ordered : evenOneMarker6_23.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0335

theorem evenOneMarker6_24Ordered : evenOneMarker6_24.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 137) (by decide)
  exact orderRange0336

theorem evenOneMarker6_25Ordered : evenOneMarker6_25.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 124) (by decide)
  exact orderRange0337

end Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms

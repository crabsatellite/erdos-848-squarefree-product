import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.TargetData

namespace Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderRange0030Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0030Check :
    orderRange0030Tree.check evenOneMarker0_12 0 = true := by decide

theorem orderRange0030 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_12 0 125 := by
  simpa [orderRange0030Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0030Check

def orderRange0031Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0031Check :
    orderRange0031Tree.check evenOneMarker0_13 0 = true := by decide

theorem orderRange0031 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_13 0 127 := by
  simpa [orderRange0031Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0031Check

def orderRange0032Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0032Check :
    orderRange0032Tree.check evenOneMarker0_14 0 = true := by decide

theorem orderRange0032 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_14 0 135 := by
  simpa [orderRange0032Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0032Check

def orderRange0033Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0033Check :
    orderRange0033Tree.check evenOneMarker0_15 0 = true := by decide

theorem orderRange0033 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_15 0 121 := by
  simpa [orderRange0033Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0033Check

def orderRange0034Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0034Check :
    orderRange0034Tree.check evenOneMarker0_16 0 = true := by decide

theorem orderRange0034 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_16 0 130 := by
  simpa [orderRange0034Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0034Check

def orderRange0035Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0035Check :
    orderRange0035Tree.check evenOneMarker0_17 0 = true := by decide

theorem orderRange0035 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_17 0 122 := by
  simpa [orderRange0035Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0035Check

def orderRange0036Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0036Check :
    orderRange0036Tree.check evenOneMarker0_18 0 = true := by decide

theorem orderRange0036 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_18 0 149 := by
  simpa [orderRange0036Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0036Check

def orderRange0037Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0037Check :
    orderRange0037Tree.check evenOneMarker0_19 0 = true := by decide

theorem orderRange0037 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_19 0 129 := by
  simpa [orderRange0037Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0037Check

def orderRange0038Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0038Check :
    orderRange0038Tree.check evenOneMarker0_20 0 = true := by decide

theorem orderRange0038 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_20 0 136 := by
  simpa [orderRange0038Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0038Check

def orderRange0039Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0039Check :
    orderRange0039Tree.check evenOneMarker0_21 0 = true := by decide

theorem orderRange0039 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_21 0 129 := by
  simpa [orderRange0039Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0039Check

def orderRange0040Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0040Check :
    orderRange0040Tree.check evenOneMarker0_22 0 = true := by decide

theorem orderRange0040 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_22 0 132 := by
  simpa [orderRange0040Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0040Check

def orderRange0041Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0041Check :
    orderRange0041Tree.check evenOneMarker0_23 0 = true := by decide

theorem orderRange0041 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_23 0 146 := by
  simpa [orderRange0041Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0041Check

def orderRange0042Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0042Check :
    orderRange0042Tree.check evenOneMarker0_24 0 = true := by decide

theorem orderRange0042 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_24 0 144 := by
  simpa [orderRange0042Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0042Check

def orderRange0043Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0043Check :
    orderRange0043Tree.check evenOneMarker0_25 0 = true := by decide

theorem orderRange0043 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_25 0 133 := by
  simpa [orderRange0043Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0043Check

def orderRange0044Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0044Check :
    orderRange0044Tree.check evenOneMarker0_26 0 = true := by decide

theorem orderRange0044 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_26 0 131 := by
  simpa [orderRange0044Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0044Check

def orderRange0045Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0045Check :
    orderRange0045Tree.check evenOneMarker0_27 0 = true := by decide

theorem orderRange0045 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_27 0 131 := by
  simpa [orderRange0045Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0045Check

def orderRange0046Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0046Check :
    orderRange0046Tree.check evenOneMarker0_28 0 = true := by decide

theorem orderRange0046 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_28 0 140 := by
  simpa [orderRange0046Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0046Check

def orderRange0047Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0047Check :
    orderRange0047Tree.check evenOneMarker0_29 0 = true := by decide

theorem orderRange0047 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_29 0 129 := by
  simpa [orderRange0047Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0047Check

def orderRange0048Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0048Check :
    orderRange0048Tree.check evenOneMarker0_30 0 = true := by decide

theorem orderRange0048 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_30 0 121 := by
  simpa [orderRange0048Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0048Check

def orderRange0049Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0049Check :
    orderRange0049Tree.check evenOneMarker0_31 0 = true := by decide

theorem orderRange0049 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_31 0 132 := by
  simpa [orderRange0049Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0049Check

def orderRange0050Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0050Check :
    orderRange0050Tree.check evenOneMarker0_32 0 = true := by decide

theorem orderRange0050 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_32 0 137 := by
  simpa [orderRange0050Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0050Check

def orderRange0051Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0051Check :
    orderRange0051Tree.check evenOneMarker0_33 0 = true := by decide

theorem orderRange0051 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_33 0 139 := by
  simpa [orderRange0051Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0051Check

def orderRange0052Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0052Check :
    orderRange0052Tree.check evenOneMarker0_34 0 = true := by decide

theorem orderRange0052 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_34 0 133 := by
  simpa [orderRange0052Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0052Check

def orderRange0053Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0053Check :
    orderRange0053Tree.check evenOneMarker0_35 0 = true := by decide

theorem orderRange0053 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_35 0 143 := by
  simpa [orderRange0053Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0053Check

def orderRange0054Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0054Check :
    orderRange0054Tree.check evenOneMarker0_36 0 = true := by decide

theorem orderRange0054 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_36 0 138 := by
  simpa [orderRange0054Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0054Check

def orderRange0055Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0055Check :
    orderRange0055Tree.check evenOneMarker0_37 0 = true := by decide

theorem orderRange0055 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_37 0 127 := by
  simpa [orderRange0055Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0055Check

def orderRange0056Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0056Check :
    orderRange0056Tree.check evenOneMarker0_38 0 = true := by decide

theorem orderRange0056 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_38 0 136 := by
  simpa [orderRange0056Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0056Check

def orderRange0057Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0057Check :
    orderRange0057Tree.check evenOneMarker0_39 0 = true := by decide

theorem orderRange0057 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_39 0 138 := by
  simpa [orderRange0057Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0057Check

def orderRange0058Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0058Check :
    orderRange0058Tree.check evenOneMarker0_40 0 = true := by decide

theorem orderRange0058 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_40 0 129 := by
  simpa [orderRange0058Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0058Check

def orderRange0059Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0059Check :
    orderRange0059Tree.check evenOneMarker0_41 0 = true := by decide

theorem orderRange0059 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_41 0 147 := by
  simpa [orderRange0059Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0059Check

def orderRange0060Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0060Check :
    orderRange0060Tree.check evenOneMarker0_42 0 = true := by decide

theorem orderRange0060 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_42 0 135 := by
  simpa [orderRange0060Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0060Check

def orderRange0061Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0061Check :
    orderRange0061Tree.check evenOneMarker0_43 0 = true := by decide

theorem orderRange0061 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_43 0 131 := by
  simpa [orderRange0061Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0061Check

def orderRange0062Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0062Check :
    orderRange0062Tree.check evenOneMarker0_44 0 = true := by decide

theorem orderRange0062 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_44 0 133 := by
  simpa [orderRange0062Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0062Check

def orderRange0063Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0063Check :
    orderRange0063Tree.check evenOneMarker0_45 0 = true := by decide

theorem orderRange0063 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_45 0 119 := by
  simpa [orderRange0063Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0063Check

def orderRange0064Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0064Check :
    orderRange0064Tree.check evenOneMarker0_46 0 = true := by decide

theorem orderRange0064 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_46 0 135 := by
  simpa [orderRange0064Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0064Check

def orderRange0065Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0065Check :
    orderRange0065Tree.check evenOneMarker0_47 0 = true := by decide

theorem orderRange0065 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_47 0 141 := by
  simpa [orderRange0065Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0065Check

def orderRange0066Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0066Check :
    orderRange0066Tree.check evenOneMarker0_48 0 = true := by decide

theorem orderRange0066 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker0_48 0 146 := by
  simpa [orderRange0066Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0066Check

def orderRange0067Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0067Check :
    orderRange0067Tree.check evenOneMarker1_0 0 = true := by decide

theorem orderRange0067 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_0 0 131 := by
  simpa [orderRange0067Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0067Check

def orderRange0068Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0068Check :
    orderRange0068Tree.check evenOneMarker1_1 0 = true := by decide

theorem orderRange0068 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_1 0 157 := by
  simpa [orderRange0068Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0068Check

def orderRange0069Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0069Check :
    orderRange0069Tree.check evenOneMarker1_2 0 = true := by decide

theorem orderRange0069 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_2 0 137 := by
  simpa [orderRange0069Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0069Check

def orderRange0070Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0070Check :
    orderRange0070Tree.check evenOneMarker1_3 0 = true := by decide

theorem orderRange0070 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_3 0 134 := by
  simpa [orderRange0070Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0070Check

def orderRange0071Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0071Check :
    orderRange0071Tree.check evenOneMarker1_4 0 = true := by decide

theorem orderRange0071 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_4 0 128 := by
  simpa [orderRange0071Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0071Check

def orderRange0072Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0072Check :
    orderRange0072Tree.check evenOneMarker1_5 0 = true := by decide

theorem orderRange0072 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_5 0 152 := by
  simpa [orderRange0072Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0072Check

def orderRange0073Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0073Check :
    orderRange0073Tree.check evenOneMarker1_6 0 = true := by decide

theorem orderRange0073 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_6 0 131 := by
  simpa [orderRange0073Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0073Check

def orderRange0074Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0074Check :
    orderRange0074Tree.check evenOneMarker1_7 0 = true := by decide

theorem orderRange0074 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_7 0 142 := by
  simpa [orderRange0074Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0074Check

def orderRange0075Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0075Check :
    orderRange0075Tree.check evenOneMarker1_8 0 = true := by decide

theorem orderRange0075 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_8 0 129 := by
  simpa [orderRange0075Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0075Check

def orderRange0076Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0076Check :
    orderRange0076Tree.check evenOneMarker1_9 0 = true := by decide

theorem orderRange0076 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_9 0 150 := by
  simpa [orderRange0076Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0076Check

def orderRange0077Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0077Check :
    orderRange0077Tree.check evenOneMarker1_10 0 = true := by decide

theorem orderRange0077 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_10 0 154 := by
  simpa [orderRange0077Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0077Check

def orderRange0078Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0078Check :
    orderRange0078Tree.check evenOneMarker1_11 0 = true := by decide

theorem orderRange0078 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_11 0 130 := by
  simpa [orderRange0078Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0078Check

def orderRange0079Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0079Check :
    orderRange0079Tree.check evenOneMarker1_12 0 = true := by decide

theorem orderRange0079 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_12 0 133 := by
  simpa [orderRange0079Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0079Check

def orderRange0080Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0080Check :
    orderRange0080Tree.check evenOneMarker1_13 0 = true := by decide

theorem orderRange0080 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_13 0 129 := by
  simpa [orderRange0080Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0080Check

def orderRange0081Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0081Check :
    orderRange0081Tree.check evenOneMarker1_14 0 = true := by decide

theorem orderRange0081 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_14 0 153 := by
  simpa [orderRange0081Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0081Check

def orderRange0082Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0082Check :
    orderRange0082Tree.check evenOneMarker1_15 0 = true := by decide

theorem orderRange0082 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_15 0 120 := by
  simpa [orderRange0082Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0082Check

def orderRange0083Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0083Check :
    orderRange0083Tree.check evenOneMarker1_16 0 = true := by decide

theorem orderRange0083 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_16 0 116 := by
  simpa [orderRange0083Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0083Check

def orderRange0084Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0084Check :
    orderRange0084Tree.check evenOneMarker1_17 0 = true := by decide

theorem orderRange0084 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_17 0 136 := by
  simpa [orderRange0084Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0084Check

def orderRange0085Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0085Check :
    orderRange0085Tree.check evenOneMarker1_18 0 = true := by decide

theorem orderRange0085 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_18 0 136 := by
  simpa [orderRange0085Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0085Check

def orderRange0086Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0086Check :
    orderRange0086Tree.check evenOneMarker1_19 0 = true := by decide

theorem orderRange0086 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_19 0 143 := by
  simpa [orderRange0086Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0086Check

def orderRange0087Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0087Check :
    orderRange0087Tree.check evenOneMarker1_20 0 = true := by decide

theorem orderRange0087 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_20 0 129 := by
  simpa [orderRange0087Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0087Check

def orderRange0088Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0088Check :
    orderRange0088Tree.check evenOneMarker1_21 0 = true := by decide

theorem orderRange0088 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_21 0 123 := by
  simpa [orderRange0088Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0088Check

def orderRange0089Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0089Check :
    orderRange0089Tree.check evenOneMarker1_22 0 = true := by decide

theorem orderRange0089 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_22 0 132 := by
  simpa [orderRange0089Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0089Check

def orderRange0090Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0090Check :
    orderRange0090Tree.check evenOneMarker1_23 0 = true := by decide

theorem orderRange0090 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_23 0 127 := by
  simpa [orderRange0090Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0090Check

theorem evenOneMarker0_12Ordered : evenOneMarker0_12.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 124) (by decide)
  exact orderRange0030

theorem evenOneMarker0_13Ordered : evenOneMarker0_13.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 126) (by decide)
  exact orderRange0031

theorem evenOneMarker0_14Ordered : evenOneMarker0_14.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0032

theorem evenOneMarker0_15Ordered : evenOneMarker0_15.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 120) (by decide)
  exact orderRange0033

theorem evenOneMarker0_16Ordered : evenOneMarker0_16.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 129) (by decide)
  exact orderRange0034

theorem evenOneMarker0_17Ordered : evenOneMarker0_17.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 121) (by decide)
  exact orderRange0035

theorem evenOneMarker0_18Ordered : evenOneMarker0_18.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 148) (by decide)
  exact orderRange0036

theorem evenOneMarker0_19Ordered : evenOneMarker0_19.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 128) (by decide)
  exact orderRange0037

theorem evenOneMarker0_20Ordered : evenOneMarker0_20.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 135) (by decide)
  exact orderRange0038

theorem evenOneMarker0_21Ordered : evenOneMarker0_21.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 128) (by decide)
  exact orderRange0039

theorem evenOneMarker0_22Ordered : evenOneMarker0_22.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 131) (by decide)
  exact orderRange0040

theorem evenOneMarker0_23Ordered : evenOneMarker0_23.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 145) (by decide)
  exact orderRange0041

theorem evenOneMarker0_24Ordered : evenOneMarker0_24.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 143) (by decide)
  exact orderRange0042

theorem evenOneMarker0_25Ordered : evenOneMarker0_25.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 132) (by decide)
  exact orderRange0043

theorem evenOneMarker0_26Ordered : evenOneMarker0_26.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0044

theorem evenOneMarker0_27Ordered : evenOneMarker0_27.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0045

theorem evenOneMarker0_28Ordered : evenOneMarker0_28.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 139) (by decide)
  exact orderRange0046

theorem evenOneMarker0_29Ordered : evenOneMarker0_29.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 128) (by decide)
  exact orderRange0047

theorem evenOneMarker0_30Ordered : evenOneMarker0_30.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 120) (by decide)
  exact orderRange0048

theorem evenOneMarker0_31Ordered : evenOneMarker0_31.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 131) (by decide)
  exact orderRange0049

theorem evenOneMarker0_32Ordered : evenOneMarker0_32.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 136) (by decide)
  exact orderRange0050

theorem evenOneMarker0_33Ordered : evenOneMarker0_33.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 138) (by decide)
  exact orderRange0051

theorem evenOneMarker0_34Ordered : evenOneMarker0_34.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 132) (by decide)
  exact orderRange0052

theorem evenOneMarker0_35Ordered : evenOneMarker0_35.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 142) (by decide)
  exact orderRange0053

theorem evenOneMarker0_36Ordered : evenOneMarker0_36.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 137) (by decide)
  exact orderRange0054

theorem evenOneMarker0_37Ordered : evenOneMarker0_37.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 126) (by decide)
  exact orderRange0055

theorem evenOneMarker0_38Ordered : evenOneMarker0_38.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 135) (by decide)
  exact orderRange0056

theorem evenOneMarker0_39Ordered : evenOneMarker0_39.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 137) (by decide)
  exact orderRange0057

theorem evenOneMarker0_40Ordered : evenOneMarker0_40.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 128) (by decide)
  exact orderRange0058

theorem evenOneMarker0_41Ordered : evenOneMarker0_41.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 146) (by decide)
  exact orderRange0059

theorem evenOneMarker0_42Ordered : evenOneMarker0_42.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0060

theorem evenOneMarker0_43Ordered : evenOneMarker0_43.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0061

theorem evenOneMarker0_44Ordered : evenOneMarker0_44.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 132) (by decide)
  exact orderRange0062

theorem evenOneMarker0_45Ordered : evenOneMarker0_45.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 118) (by decide)
  exact orderRange0063

theorem evenOneMarker0_46Ordered : evenOneMarker0_46.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0064

theorem evenOneMarker0_47Ordered : evenOneMarker0_47.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 140) (by decide)
  exact orderRange0065

theorem evenOneMarker0_48Ordered : evenOneMarker0_48.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 145) (by decide)
  exact orderRange0066

theorem evenOneMarker1_0Ordered : evenOneMarker1_0.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0067

theorem evenOneMarker1_1Ordered : evenOneMarker1_1.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 156) (by decide)
  exact orderRange0068

theorem evenOneMarker1_2Ordered : evenOneMarker1_2.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 136) (by decide)
  exact orderRange0069

theorem evenOneMarker1_3Ordered : evenOneMarker1_3.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 133) (by decide)
  exact orderRange0070

theorem evenOneMarker1_4Ordered : evenOneMarker1_4.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 127) (by decide)
  exact orderRange0071

theorem evenOneMarker1_5Ordered : evenOneMarker1_5.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 151) (by decide)
  exact orderRange0072

theorem evenOneMarker1_6Ordered : evenOneMarker1_6.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0073

theorem evenOneMarker1_7Ordered : evenOneMarker1_7.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 141) (by decide)
  exact orderRange0074

theorem evenOneMarker1_8Ordered : evenOneMarker1_8.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 128) (by decide)
  exact orderRange0075

theorem evenOneMarker1_9Ordered : evenOneMarker1_9.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 149) (by decide)
  exact orderRange0076

theorem evenOneMarker1_10Ordered : evenOneMarker1_10.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 153) (by decide)
  exact orderRange0077

theorem evenOneMarker1_11Ordered : evenOneMarker1_11.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 129) (by decide)
  exact orderRange0078

theorem evenOneMarker1_12Ordered : evenOneMarker1_12.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 132) (by decide)
  exact orderRange0079

theorem evenOneMarker1_13Ordered : evenOneMarker1_13.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 128) (by decide)
  exact orderRange0080

theorem evenOneMarker1_14Ordered : evenOneMarker1_14.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 152) (by decide)
  exact orderRange0081

theorem evenOneMarker1_15Ordered : evenOneMarker1_15.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 119) (by decide)
  exact orderRange0082

theorem evenOneMarker1_16Ordered : evenOneMarker1_16.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 115) (by decide)
  exact orderRange0083

theorem evenOneMarker1_17Ordered : evenOneMarker1_17.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 135) (by decide)
  exact orderRange0084

theorem evenOneMarker1_18Ordered : evenOneMarker1_18.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 135) (by decide)
  exact orderRange0085

theorem evenOneMarker1_19Ordered : evenOneMarker1_19.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 142) (by decide)
  exact orderRange0086

theorem evenOneMarker1_20Ordered : evenOneMarker1_20.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 128) (by decide)
  exact orderRange0087

theorem evenOneMarker1_21Ordered : evenOneMarker1_21.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 122) (by decide)
  exact orderRange0088

theorem evenOneMarker1_22Ordered : evenOneMarker1_22.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 131) (by decide)
  exact orderRange0089

theorem evenOneMarker1_23Ordered : evenOneMarker1_23.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 126) (by decide)
  exact orderRange0090

end Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms

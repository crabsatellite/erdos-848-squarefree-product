import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.TargetData

namespace Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderRange0091Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0091Check :
    orderRange0091Tree.check evenOneMarker1_24 0 = true := by decide

theorem orderRange0091 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_24 0 129 := by
  simpa [orderRange0091Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0091Check

def orderRange0092Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0092Check :
    orderRange0092Tree.check evenOneMarker1_25 0 = true := by decide

theorem orderRange0092 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_25 0 128 := by
  simpa [orderRange0092Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0092Check

def orderRange0093Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0093Check :
    orderRange0093Tree.check evenOneMarker1_26 0 = true := by decide

theorem orderRange0093 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_26 0 136 := by
  simpa [orderRange0093Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0093Check

def orderRange0094Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0094Check :
    orderRange0094Tree.check evenOneMarker1_27 0 = true := by decide

theorem orderRange0094 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_27 0 136 := by
  simpa [orderRange0094Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0094Check

def orderRange0095Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0095Check :
    orderRange0095Tree.check evenOneMarker1_28 0 = true := by decide

theorem orderRange0095 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_28 0 121 := by
  simpa [orderRange0095Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0095Check

def orderRange0096Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0096Check :
    orderRange0096Tree.check evenOneMarker1_29 0 = true := by decide

theorem orderRange0096 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_29 0 122 := by
  simpa [orderRange0096Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0096Check

def orderRange0097Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0097Check :
    orderRange0097Tree.check evenOneMarker1_30 0 = true := by decide

theorem orderRange0097 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_30 0 140 := by
  simpa [orderRange0097Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0097Check

def orderRange0098Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0098Check :
    orderRange0098Tree.check evenOneMarker1_31 0 = true := by decide

theorem orderRange0098 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_31 0 120 := by
  simpa [orderRange0098Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0098Check

def orderRange0099Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0099Check :
    orderRange0099Tree.check evenOneMarker1_32 0 = true := by decide

theorem orderRange0099 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_32 0 119 := by
  simpa [orderRange0099Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0099Check

def orderRange0100Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0100Check :
    orderRange0100Tree.check evenOneMarker1_33 0 = true := by decide

theorem orderRange0100 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_33 0 137 := by
  simpa [orderRange0100Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0100Check

def orderRange0101Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0101Check :
    orderRange0101Tree.check evenOneMarker1_34 0 = true := by decide

theorem orderRange0101 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_34 0 130 := by
  simpa [orderRange0101Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0101Check

def orderRange0102Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0102Check :
    orderRange0102Tree.check evenOneMarker1_35 0 = true := by decide

theorem orderRange0102 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_35 0 123 := by
  simpa [orderRange0102Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0102Check

def orderRange0103Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0103Check :
    orderRange0103Tree.check evenOneMarker1_36 0 = true := by decide

theorem orderRange0103 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_36 0 146 := by
  simpa [orderRange0103Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0103Check

def orderRange0104Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0104Check :
    orderRange0104Tree.check evenOneMarker1_37 0 = true := by decide

theorem orderRange0104 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_37 0 125 := by
  simpa [orderRange0104Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0104Check

def orderRange0105Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0105Check :
    orderRange0105Tree.check evenOneMarker1_38 0 = true := by decide

theorem orderRange0105 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_38 0 139 := by
  simpa [orderRange0105Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0105Check

def orderRange0106Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0106Check :
    orderRange0106Tree.check evenOneMarker1_39 0 = true := by decide

theorem orderRange0106 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_39 0 140 := by
  simpa [orderRange0106Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0106Check

def orderRange0107Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0107Check :
    orderRange0107Tree.check evenOneMarker1_40 0 = true := by decide

theorem orderRange0107 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_40 0 137 := by
  simpa [orderRange0107Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0107Check

def orderRange0108Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0108Check :
    orderRange0108Tree.check evenOneMarker1_41 0 = true := by decide

theorem orderRange0108 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_41 0 118 := by
  simpa [orderRange0108Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0108Check

def orderRange0109Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0109Check :
    orderRange0109Tree.check evenOneMarker1_42 0 = true := by decide

theorem orderRange0109 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_42 0 144 := by
  simpa [orderRange0109Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0109Check

def orderRange0110Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0110Check :
    orderRange0110Tree.check evenOneMarker1_43 0 = true := by decide

theorem orderRange0110 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_43 0 132 := by
  simpa [orderRange0110Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0110Check

def orderRange0111Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0111Check :
    orderRange0111Tree.check evenOneMarker1_44 0 = true := by decide

theorem orderRange0111 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_44 0 153 := by
  simpa [orderRange0111Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0111Check

def orderRange0112Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0112Check :
    orderRange0112Tree.check evenOneMarker1_45 0 = true := by decide

theorem orderRange0112 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_45 0 123 := by
  simpa [orderRange0112Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0112Check

def orderRange0113Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0113Check :
    orderRange0113Tree.check evenOneMarker1_46 0 = true := by decide

theorem orderRange0113 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_46 0 141 := by
  simpa [orderRange0113Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0113Check

def orderRange0114Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0114Check :
    orderRange0114Tree.check evenOneMarker1_47 0 = true := by decide

theorem orderRange0114 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_47 0 123 := by
  simpa [orderRange0114Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0114Check

def orderRange0115Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0115Check :
    orderRange0115Tree.check evenOneMarker1_48 0 = true := by decide

theorem orderRange0115 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker1_48 0 136 := by
  simpa [orderRange0115Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0115Check

def orderRange0116Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0116Check :
    orderRange0116Tree.check evenOneMarker2_0 0 = true := by decide

theorem orderRange0116 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_0 0 137 := by
  simpa [orderRange0116Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0116Check

def orderRange0117Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0117Check :
    orderRange0117Tree.check evenOneMarker2_1 0 = true := by decide

theorem orderRange0117 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_1 0 129 := by
  simpa [orderRange0117Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0117Check

def orderRange0118Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0118Check :
    orderRange0118Tree.check evenOneMarker2_2 0 = true := by decide

theorem orderRange0118 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_2 0 135 := by
  simpa [orderRange0118Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0118Check

def orderRange0119Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0119Check :
    orderRange0119Tree.check evenOneMarker2_3 0 = true := by decide

theorem orderRange0119 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_3 0 135 := by
  simpa [orderRange0119Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0119Check

def orderRange0120Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0120Check :
    orderRange0120Tree.check evenOneMarker2_4 0 = true := by decide

theorem orderRange0120 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_4 0 128 := by
  simpa [orderRange0120Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0120Check

def orderRange0121Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0121Check :
    orderRange0121Tree.check evenOneMarker2_5 0 = true := by decide

theorem orderRange0121 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_5 0 134 := by
  simpa [orderRange0121Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0121Check

def orderRange0122Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0122Check :
    orderRange0122Tree.check evenOneMarker2_6 0 = true := by decide

theorem orderRange0122 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_6 0 127 := by
  simpa [orderRange0122Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0122Check

def orderRange0123Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0123Check :
    orderRange0123Tree.check evenOneMarker2_7 0 = true := by decide

theorem orderRange0123 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_7 0 134 := by
  simpa [orderRange0123Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0123Check

def orderRange0124Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0124Check :
    orderRange0124Tree.check evenOneMarker2_8 0 = true := by decide

theorem orderRange0124 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_8 0 135 := by
  simpa [orderRange0124Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0124Check

def orderRange0125Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0125Check :
    orderRange0125Tree.check evenOneMarker2_9 0 = true := by decide

theorem orderRange0125 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_9 0 135 := by
  simpa [orderRange0125Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0125Check

def orderRange0126Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0126Check :
    orderRange0126Tree.check evenOneMarker2_10 0 = true := by decide

theorem orderRange0126 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_10 0 125 := by
  simpa [orderRange0126Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0126Check

def orderRange0127Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0127Check :
    orderRange0127Tree.check evenOneMarker2_11 0 = true := by decide

theorem orderRange0127 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_11 0 132 := by
  simpa [orderRange0127Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0127Check

def orderRange0128Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0128Check :
    orderRange0128Tree.check evenOneMarker2_12 0 = true := by decide

theorem orderRange0128 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_12 0 116 := by
  simpa [orderRange0128Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0128Check

def orderRange0129Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0129Check :
    orderRange0129Tree.check evenOneMarker2_13 0 = true := by decide

theorem orderRange0129 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_13 0 145 := by
  simpa [orderRange0129Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0129Check

def orderRange0130Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0130Check :
    orderRange0130Tree.check evenOneMarker2_14 0 = true := by decide

theorem orderRange0130 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_14 0 131 := by
  simpa [orderRange0130Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0130Check

def orderRange0131Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0131Check :
    orderRange0131Tree.check evenOneMarker2_15 0 = true := by decide

theorem orderRange0131 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_15 0 124 := by
  simpa [orderRange0131Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0131Check

def orderRange0132Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0132Check :
    orderRange0132Tree.check evenOneMarker2_16 0 = true := by decide

theorem orderRange0132 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_16 0 135 := by
  simpa [orderRange0132Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0132Check

def orderRange0133Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0133Check :
    orderRange0133Tree.check evenOneMarker2_17 0 = true := by decide

theorem orderRange0133 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_17 0 119 := by
  simpa [orderRange0133Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0133Check

def orderRange0134Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0134Check :
    orderRange0134Tree.check evenOneMarker2_18 0 = true := by decide

theorem orderRange0134 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_18 0 132 := by
  simpa [orderRange0134Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0134Check

def orderRange0135Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0135Check :
    orderRange0135Tree.check evenOneMarker2_19 0 = true := by decide

theorem orderRange0135 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_19 0 137 := by
  simpa [orderRange0135Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0135Check

def orderRange0136Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0136Check :
    orderRange0136Tree.check evenOneMarker2_20 0 = true := by decide

theorem orderRange0136 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_20 0 138 := by
  simpa [orderRange0136Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0136Check

def orderRange0137Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0137Check :
    orderRange0137Tree.check evenOneMarker2_21 0 = true := by decide

theorem orderRange0137 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_21 0 128 := by
  simpa [orderRange0137Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0137Check

def orderRange0138Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0138Check :
    orderRange0138Tree.check evenOneMarker2_22 0 = true := by decide

theorem orderRange0138 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_22 0 123 := by
  simpa [orderRange0138Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0138Check

def orderRange0139Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0139Check :
    orderRange0139Tree.check evenOneMarker2_23 0 = true := by decide

theorem orderRange0139 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_23 0 131 := by
  simpa [orderRange0139Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0139Check

def orderRange0140Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0140Check :
    orderRange0140Tree.check evenOneMarker2_24 0 = true := by decide

theorem orderRange0140 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_24 0 134 := by
  simpa [orderRange0140Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0140Check

def orderRange0141Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0141Check :
    orderRange0141Tree.check evenOneMarker2_25 0 = true := by decide

theorem orderRange0141 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_25 0 121 := by
  simpa [orderRange0141Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0141Check

def orderRange0142Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0142Check :
    orderRange0142Tree.check evenOneMarker2_26 0 = true := by decide

theorem orderRange0142 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_26 0 126 := by
  simpa [orderRange0142Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0142Check

def orderRange0143Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0143Check :
    orderRange0143Tree.check evenOneMarker2_27 0 = true := by decide

theorem orderRange0143 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_27 0 137 := by
  simpa [orderRange0143Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0143Check

def orderRange0144Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0144Check :
    orderRange0144Tree.check evenOneMarker2_28 0 = true := by decide

theorem orderRange0144 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_28 0 138 := by
  simpa [orderRange0144Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0144Check

def orderRange0145Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0145Check :
    orderRange0145Tree.check evenOneMarker2_29 0 = true := by decide

theorem orderRange0145 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_29 0 146 := by
  simpa [orderRange0145Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0145Check

def orderRange0146Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0146Check :
    orderRange0146Tree.check evenOneMarker2_30 0 = true := by decide

theorem orderRange0146 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_30 0 134 := by
  simpa [orderRange0146Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0146Check

def orderRange0147Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0147Check :
    orderRange0147Tree.check evenOneMarker2_31 0 = true := by decide

theorem orderRange0147 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_31 0 133 := by
  simpa [orderRange0147Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0147Check

def orderRange0148Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0148Check :
    orderRange0148Tree.check evenOneMarker2_32 0 = true := by decide

theorem orderRange0148 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_32 0 135 := by
  simpa [orderRange0148Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0148Check

def orderRange0149Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0149Check :
    orderRange0149Tree.check evenOneMarker2_33 0 = true := by decide

theorem orderRange0149 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_33 0 138 := by
  simpa [orderRange0149Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0149Check

def orderRange0150Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))))

theorem orderRange0150Check :
    orderRange0150Tree.check evenOneMarker2_34 0 = true := by decide

theorem orderRange0150 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_34 0 123 := by
  simpa [orderRange0150Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0150Check

def orderRange0151Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0151Check :
    orderRange0151Tree.check evenOneMarker2_35 0 = true := by decide

theorem orderRange0151 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_35 0 150 := by
  simpa [orderRange0151Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0151Check

def orderRange0152Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))) (.node (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))))) (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf (.node .leaf .leaf))))))))

theorem orderRange0152Check :
    orderRange0152Tree.check evenOneMarker2_36 0 = true := by decide

theorem orderRange0152 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered evenOneMarker2_36 0 144 := by
  simpa [orderRange0152Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderRange0152Check

theorem evenOneMarker1_24Ordered : evenOneMarker1_24.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 128) (by decide)
  exact orderRange0091

theorem evenOneMarker1_25Ordered : evenOneMarker1_25.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 127) (by decide)
  exact orderRange0092

theorem evenOneMarker1_26Ordered : evenOneMarker1_26.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 135) (by decide)
  exact orderRange0093

theorem evenOneMarker1_27Ordered : evenOneMarker1_27.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 135) (by decide)
  exact orderRange0094

theorem evenOneMarker1_28Ordered : evenOneMarker1_28.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 120) (by decide)
  exact orderRange0095

theorem evenOneMarker1_29Ordered : evenOneMarker1_29.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 121) (by decide)
  exact orderRange0096

theorem evenOneMarker1_30Ordered : evenOneMarker1_30.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 139) (by decide)
  exact orderRange0097

theorem evenOneMarker1_31Ordered : evenOneMarker1_31.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 119) (by decide)
  exact orderRange0098

theorem evenOneMarker1_32Ordered : evenOneMarker1_32.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 118) (by decide)
  exact orderRange0099

theorem evenOneMarker1_33Ordered : evenOneMarker1_33.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 136) (by decide)
  exact orderRange0100

theorem evenOneMarker1_34Ordered : evenOneMarker1_34.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 129) (by decide)
  exact orderRange0101

theorem evenOneMarker1_35Ordered : evenOneMarker1_35.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 122) (by decide)
  exact orderRange0102

theorem evenOneMarker1_36Ordered : evenOneMarker1_36.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 145) (by decide)
  exact orderRange0103

theorem evenOneMarker1_37Ordered : evenOneMarker1_37.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 124) (by decide)
  exact orderRange0104

theorem evenOneMarker1_38Ordered : evenOneMarker1_38.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 138) (by decide)
  exact orderRange0105

theorem evenOneMarker1_39Ordered : evenOneMarker1_39.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 139) (by decide)
  exact orderRange0106

theorem evenOneMarker1_40Ordered : evenOneMarker1_40.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 136) (by decide)
  exact orderRange0107

theorem evenOneMarker1_41Ordered : evenOneMarker1_41.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 117) (by decide)
  exact orderRange0108

theorem evenOneMarker1_42Ordered : evenOneMarker1_42.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 143) (by decide)
  exact orderRange0109

theorem evenOneMarker1_43Ordered : evenOneMarker1_43.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 131) (by decide)
  exact orderRange0110

theorem evenOneMarker1_44Ordered : evenOneMarker1_44.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 152) (by decide)
  exact orderRange0111

theorem evenOneMarker1_45Ordered : evenOneMarker1_45.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 122) (by decide)
  exact orderRange0112

theorem evenOneMarker1_46Ordered : evenOneMarker1_46.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 140) (by decide)
  exact orderRange0113

theorem evenOneMarker1_47Ordered : evenOneMarker1_47.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 122) (by decide)
  exact orderRange0114

theorem evenOneMarker1_48Ordered : evenOneMarker1_48.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 135) (by decide)
  exact orderRange0115

theorem evenOneMarker2_0Ordered : evenOneMarker2_0.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 136) (by decide)
  exact orderRange0116

theorem evenOneMarker2_1Ordered : evenOneMarker2_1.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 128) (by decide)
  exact orderRange0117

theorem evenOneMarker2_2Ordered : evenOneMarker2_2.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0118

theorem evenOneMarker2_3Ordered : evenOneMarker2_3.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0119

theorem evenOneMarker2_4Ordered : evenOneMarker2_4.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 127) (by decide)
  exact orderRange0120

theorem evenOneMarker2_5Ordered : evenOneMarker2_5.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 133) (by decide)
  exact orderRange0121

theorem evenOneMarker2_6Ordered : evenOneMarker2_6.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 126) (by decide)
  exact orderRange0122

theorem evenOneMarker2_7Ordered : evenOneMarker2_7.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 133) (by decide)
  exact orderRange0123

theorem evenOneMarker2_8Ordered : evenOneMarker2_8.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0124

theorem evenOneMarker2_9Ordered : evenOneMarker2_9.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0125

theorem evenOneMarker2_10Ordered : evenOneMarker2_10.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 124) (by decide)
  exact orderRange0126

theorem evenOneMarker2_11Ordered : evenOneMarker2_11.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 131) (by decide)
  exact orderRange0127

theorem evenOneMarker2_12Ordered : evenOneMarker2_12.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 115) (by decide)
  exact orderRange0128

theorem evenOneMarker2_13Ordered : evenOneMarker2_13.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 144) (by decide)
  exact orderRange0129

theorem evenOneMarker2_14Ordered : evenOneMarker2_14.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0130

theorem evenOneMarker2_15Ordered : evenOneMarker2_15.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 123) (by decide)
  exact orderRange0131

theorem evenOneMarker2_16Ordered : evenOneMarker2_16.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0132

theorem evenOneMarker2_17Ordered : evenOneMarker2_17.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 118) (by decide)
  exact orderRange0133

theorem evenOneMarker2_18Ordered : evenOneMarker2_18.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 131) (by decide)
  exact orderRange0134

theorem evenOneMarker2_19Ordered : evenOneMarker2_19.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 136) (by decide)
  exact orderRange0135

theorem evenOneMarker2_20Ordered : evenOneMarker2_20.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 137) (by decide)
  exact orderRange0136

theorem evenOneMarker2_21Ordered : evenOneMarker2_21.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 127) (by decide)
  exact orderRange0137

theorem evenOneMarker2_22Ordered : evenOneMarker2_22.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 122) (by decide)
  exact orderRange0138

theorem evenOneMarker2_23Ordered : evenOneMarker2_23.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 130) (by decide)
  exact orderRange0139

theorem evenOneMarker2_24Ordered : evenOneMarker2_24.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 133) (by decide)
  exact orderRange0140

theorem evenOneMarker2_25Ordered : evenOneMarker2_25.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 120) (by decide)
  exact orderRange0141

theorem evenOneMarker2_26Ordered : evenOneMarker2_26.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 125) (by decide)
  exact orderRange0142

theorem evenOneMarker2_27Ordered : evenOneMarker2_27.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 136) (by decide)
  exact orderRange0143

theorem evenOneMarker2_28Ordered : evenOneMarker2_28.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 137) (by decide)
  exact orderRange0144

theorem evenOneMarker2_29Ordered : evenOneMarker2_29.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 145) (by decide)
  exact orderRange0145

theorem evenOneMarker2_30Ordered : evenOneMarker2_30.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 133) (by decide)
  exact orderRange0146

theorem evenOneMarker2_31Ordered : evenOneMarker2_31.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 132) (by decide)
  exact orderRange0147

theorem evenOneMarker2_32Ordered : evenOneMarker2_32.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 134) (by decide)
  exact orderRange0148

theorem evenOneMarker2_33Ordered : evenOneMarker2_33.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 137) (by decide)
  exact orderRange0149

theorem evenOneMarker2_34Ordered : evenOneMarker2_34.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 122) (by decide)
  exact orderRange0150

theorem evenOneMarker2_35Ordered : evenOneMarker2_35.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 149) (by decide)
  exact orderRange0151

theorem evenOneMarker2_36Ordered : evenOneMarker2_36.AdjacentOrdered := by
  apply IndexedMarkerData.adjacentOrdered_of_range (comparisonCount := 143) (by decide)
  exact orderRange0152

end Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms

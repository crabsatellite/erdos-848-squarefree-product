import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0113

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0113 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 116608
  | _ => True

theorem anchorPart7_0113 : anchorPartValid7_0113 anchorHistoryChunk0113 := by
  unfold anchorPartValid7_0113 anchorHistoryChunk0113
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

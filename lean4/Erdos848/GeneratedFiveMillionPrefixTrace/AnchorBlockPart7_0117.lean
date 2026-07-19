import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0117

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0117 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 120704
  | _ => True

theorem anchorPart7_0117 : anchorPartValid7_0117 anchorHistoryChunk0117 := by
  unfold anchorPartValid7_0117 anchorHistoryChunk0117
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

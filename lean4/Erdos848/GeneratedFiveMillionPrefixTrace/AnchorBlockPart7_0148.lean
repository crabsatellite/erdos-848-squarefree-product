import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0148

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0148 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 152448
  | _ => True

theorem anchorPart7_0148 : anchorPartValid7_0148 anchorHistoryChunk0148 := by
  unfold anchorPartValid7_0148 anchorHistoryChunk0148
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

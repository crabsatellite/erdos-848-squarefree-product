import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0140

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0140 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 144256
  | _ => True

theorem anchorPart7_0140 : anchorPartValid7_0140 anchorHistoryChunk0140 := by
  unfold anchorPartValid7_0140 anchorHistoryChunk0140
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

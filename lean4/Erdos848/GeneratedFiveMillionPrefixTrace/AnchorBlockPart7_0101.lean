import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0101

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0101 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 104320
  | _ => True

theorem anchorPart7_0101 : anchorPartValid7_0101 anchorHistoryChunk0101 := by
  unfold anchorPartValid7_0101 anchorHistoryChunk0101
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

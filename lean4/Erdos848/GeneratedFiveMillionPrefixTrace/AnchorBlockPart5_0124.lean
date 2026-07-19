import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0124

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0124 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 127616
  | _ => True

theorem anchorPart5_0124 : anchorPartValid5_0124 anchorHistoryChunk0124 := by
  unfold anchorPartValid5_0124 anchorHistoryChunk0124
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

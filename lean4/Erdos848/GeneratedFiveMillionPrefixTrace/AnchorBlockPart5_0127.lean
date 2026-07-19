import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0127

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0127 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 130688
  | _ => True

theorem anchorPart5_0127 : anchorPartValid5_0127 anchorHistoryChunk0127 := by
  unfold anchorPartValid5_0127 anchorHistoryChunk0127
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

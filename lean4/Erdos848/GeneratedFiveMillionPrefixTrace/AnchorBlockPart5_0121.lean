import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0121

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0121 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 124544
  | _ => True

theorem anchorPart5_0121 : anchorPartValid5_0121 anchorHistoryChunk0121 := by
  unfold anchorPartValid5_0121 anchorHistoryChunk0121
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

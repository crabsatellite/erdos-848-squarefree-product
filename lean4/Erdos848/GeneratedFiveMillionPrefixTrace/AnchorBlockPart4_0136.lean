import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0136

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0136 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 139776
  | _ => True

theorem anchorPart4_0136 : anchorPartValid4_0136 anchorHistoryChunk0136 := by
  unfold anchorPartValid4_0136 anchorHistoryChunk0136
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

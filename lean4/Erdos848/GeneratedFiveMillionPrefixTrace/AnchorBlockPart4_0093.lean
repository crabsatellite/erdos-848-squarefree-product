import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0093

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0093 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 95744
  | _ => True

theorem anchorPart4_0093 : anchorPartValid4_0093 anchorHistoryChunk0093 := by
  unfold anchorPartValid4_0093 anchorHistoryChunk0093
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

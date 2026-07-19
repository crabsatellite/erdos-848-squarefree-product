import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0106

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0106 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 109056
  | _ => True

theorem anchorPart4_0106 : anchorPartValid4_0106 anchorHistoryChunk0106 := by
  unfold anchorPartValid4_0106 anchorHistoryChunk0106
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0143

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0143 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 146944
  | _ => True

theorem anchorPart4_0143 : anchorPartValid4_0143 anchorHistoryChunk0143 := by
  unfold anchorPartValid4_0143 anchorHistoryChunk0143
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

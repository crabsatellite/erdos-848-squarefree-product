import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0070

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0070 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 72192
  | _ => True

theorem anchorPart4_0070 : anchorPartValid4_0070 anchorHistoryChunk0070 := by
  unfold anchorPartValid4_0070 anchorHistoryChunk0070
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

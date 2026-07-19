import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0116

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0116 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 119296
  | _ => True

theorem anchorPart4_0116 : anchorPartValid4_0116 anchorHistoryChunk0116 := by
  unfold anchorPartValid4_0116 anchorHistoryChunk0116
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

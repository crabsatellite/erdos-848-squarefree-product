import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0113

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0113 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 116224
  | _ => True

theorem anchorPart4_0113 : anchorPartValid4_0113 anchorHistoryChunk0113 := by
  unfold anchorPartValid4_0113 anchorHistoryChunk0113
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0130

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0130 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 133632
  | _ => True

theorem anchorPart4_0130 : anchorPartValid4_0130 anchorHistoryChunk0130 := by
  unfold anchorPartValid4_0130 anchorHistoryChunk0130
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

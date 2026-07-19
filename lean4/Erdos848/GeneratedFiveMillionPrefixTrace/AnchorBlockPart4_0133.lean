import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0133

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0133 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 136704
  | _ => True

theorem anchorPart4_0133 : anchorPartValid4_0133 anchorHistoryChunk0133 := by
  unfold anchorPartValid4_0133 anchorHistoryChunk0133
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0027

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0027 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 28160
  | _ => True

theorem anchorPart4_0027 : anchorPartValid4_0027 anchorHistoryChunk0027 := by
  unfold anchorPartValid4_0027 anchorHistoryChunk0027
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

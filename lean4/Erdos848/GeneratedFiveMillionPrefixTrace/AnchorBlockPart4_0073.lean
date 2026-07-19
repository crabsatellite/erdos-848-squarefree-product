import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0073

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0073 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 75264
  | _ => True

theorem anchorPart4_0073 : anchorPartValid4_0073 anchorHistoryChunk0073 := by
  unfold anchorPartValid4_0073 anchorHistoryChunk0073
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

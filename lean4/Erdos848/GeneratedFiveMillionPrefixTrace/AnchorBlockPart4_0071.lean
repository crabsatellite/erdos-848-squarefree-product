import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0071

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0071 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 73216
  | _ => True

theorem anchorPart4_0071 : anchorPartValid4_0071 anchorHistoryChunk0071 := by
  unfold anchorPartValid4_0071 anchorHistoryChunk0071
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

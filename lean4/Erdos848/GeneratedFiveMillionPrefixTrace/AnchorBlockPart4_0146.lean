import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0146

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0146 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 150016
  | _ => True

theorem anchorPart4_0146 : anchorPartValid4_0146 anchorHistoryChunk0146 := by
  unfold anchorPartValid4_0146 anchorHistoryChunk0146
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

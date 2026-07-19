import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0187

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0187 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 192000
  | _ => True

theorem anchorPart4_0187 : anchorPartValid4_0187 anchorHistoryChunk0187 := by
  unfold anchorPartValid4_0187 anchorHistoryChunk0187
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

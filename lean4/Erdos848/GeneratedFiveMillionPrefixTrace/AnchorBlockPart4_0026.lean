import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0026

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0026 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 27136
  | _ => True

theorem anchorPart4_0026 : anchorPartValid4_0026 anchorHistoryChunk0026 := by
  unfold anchorPartValid4_0026 anchorHistoryChunk0026
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

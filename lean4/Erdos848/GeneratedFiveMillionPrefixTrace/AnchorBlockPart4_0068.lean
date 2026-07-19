import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0068

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0068 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 70144
  | _ => True

theorem anchorPart4_0068 : anchorPartValid4_0068 anchorHistoryChunk0068 := by
  unfold anchorPartValid4_0068 anchorHistoryChunk0068
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

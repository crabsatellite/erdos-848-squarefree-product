import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0112

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0112 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 115200
  | _ => True

theorem anchorPart4_0112 : anchorPartValid4_0112 anchorHistoryChunk0112 := by
  unfold anchorPartValid4_0112 anchorHistoryChunk0112
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

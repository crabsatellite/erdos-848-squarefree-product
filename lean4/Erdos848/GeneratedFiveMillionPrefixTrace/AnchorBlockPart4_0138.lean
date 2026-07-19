import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0138

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0138 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 141824
  | _ => True

theorem anchorPart4_0138 : anchorPartValid4_0138 anchorHistoryChunk0138 := by
  unfold anchorPartValid4_0138 anchorHistoryChunk0138
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

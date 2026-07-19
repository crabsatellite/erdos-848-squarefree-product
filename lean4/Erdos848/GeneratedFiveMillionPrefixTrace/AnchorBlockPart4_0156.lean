import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0156

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0156 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 160256
  | _ => True

theorem anchorPart4_0156 : anchorPartValid4_0156 anchorHistoryChunk0156 := by
  unfold anchorPartValid4_0156 anchorHistoryChunk0156
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

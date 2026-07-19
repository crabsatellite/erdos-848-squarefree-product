import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0075

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0075 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 77312
  | _ => True

theorem anchorPart4_0075 : anchorPartValid4_0075 anchorHistoryChunk0075 := by
  unfold anchorPartValid4_0075 anchorHistoryChunk0075
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

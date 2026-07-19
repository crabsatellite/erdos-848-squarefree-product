import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0010

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0010 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 10752
  | _ => True

theorem anchorPart4_0010 : anchorPartValid4_0010 anchorHistoryChunk0010 := by
  unfold anchorPartValid4_0010 anchorHistoryChunk0010
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

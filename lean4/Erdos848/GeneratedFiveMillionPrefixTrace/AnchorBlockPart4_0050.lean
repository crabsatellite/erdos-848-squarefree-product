import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0050

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0050 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 51712
  | _ => True

theorem anchorPart4_0050 : anchorPartValid4_0050 anchorHistoryChunk0050 := by
  unfold anchorPartValid4_0050 anchorHistoryChunk0050
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

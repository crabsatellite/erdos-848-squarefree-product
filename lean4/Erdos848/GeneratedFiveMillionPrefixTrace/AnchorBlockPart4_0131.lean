import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0131

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0131 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 134656
  | _ => True

theorem anchorPart4_0131 : anchorPartValid4_0131 anchorHistoryChunk0131 := by
  unfold anchorPartValid4_0131 anchorHistoryChunk0131
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

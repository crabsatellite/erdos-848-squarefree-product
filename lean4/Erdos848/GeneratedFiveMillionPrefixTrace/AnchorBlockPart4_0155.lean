import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0155

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0155 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 159232
  | _ => True

theorem anchorPart4_0155 : anchorPartValid4_0155 anchorHistoryChunk0155 := by
  unfold anchorPartValid4_0155 anchorHistoryChunk0155
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

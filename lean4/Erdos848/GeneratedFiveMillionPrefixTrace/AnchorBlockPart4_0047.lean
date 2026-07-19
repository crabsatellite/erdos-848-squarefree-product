import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0047

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0047 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 48640
  | _ => True

theorem anchorPart4_0047 : anchorPartValid4_0047 anchorHistoryChunk0047 := by
  unfold anchorPartValid4_0047 anchorHistoryChunk0047
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

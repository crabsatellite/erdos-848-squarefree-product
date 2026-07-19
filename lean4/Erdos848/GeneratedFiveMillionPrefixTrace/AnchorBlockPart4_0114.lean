import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0114

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0114 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 117248
  | _ => True

theorem anchorPart4_0114 : anchorPartValid4_0114 anchorHistoryChunk0114 := by
  unfold anchorPartValid4_0114 anchorHistoryChunk0114
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

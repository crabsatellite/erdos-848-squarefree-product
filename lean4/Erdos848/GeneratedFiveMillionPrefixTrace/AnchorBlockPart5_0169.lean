import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0169

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0169 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 173696
  | _ => True

theorem anchorPart5_0169 : anchorPartValid5_0169 anchorHistoryChunk0169 := by
  unfold anchorPartValid5_0169 anchorHistoryChunk0169
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

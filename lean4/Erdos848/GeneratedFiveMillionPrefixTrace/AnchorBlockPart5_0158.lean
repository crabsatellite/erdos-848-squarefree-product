import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0158

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0158 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 162432
  | _ => True

theorem anchorPart5_0158 : anchorPartValid5_0158 anchorHistoryChunk0158 := by
  unfold anchorPartValid5_0158 anchorHistoryChunk0158
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

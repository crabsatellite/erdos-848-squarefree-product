import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0193

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0193 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 198272
  | _ => True

theorem anchorPart5_0193 : anchorPartValid5_0193 anchorHistoryChunk0193 := by
  unfold anchorPartValid5_0193 anchorHistoryChunk0193
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

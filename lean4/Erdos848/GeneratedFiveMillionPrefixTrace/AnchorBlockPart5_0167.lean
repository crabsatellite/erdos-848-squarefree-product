import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0167

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0167 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 171648
  | _ => True

theorem anchorPart5_0167 : anchorPartValid5_0167 anchorHistoryChunk0167 := by
  unfold anchorPartValid5_0167 anchorHistoryChunk0167
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

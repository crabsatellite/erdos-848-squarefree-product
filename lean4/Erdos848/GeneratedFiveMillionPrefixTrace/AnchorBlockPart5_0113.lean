import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0113

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0113 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 116352
  | _ => True

theorem anchorPart5_0113 : anchorPartValid5_0113 anchorHistoryChunk0113 := by
  unfold anchorPartValid5_0113 anchorHistoryChunk0113
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

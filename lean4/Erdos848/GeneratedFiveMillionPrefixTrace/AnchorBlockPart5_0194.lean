import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0194

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0194 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 199296
  | _ => True

theorem anchorPart5_0194 : anchorPartValid5_0194 anchorHistoryChunk0194 := by
  unfold anchorPartValid5_0194 anchorHistoryChunk0194
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0194

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0194 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 199552
  | _ => True

theorem anchorPart7_0194 : anchorPartValid7_0194 anchorHistoryChunk0194 := by
  unfold anchorPartValid7_0194 anchorHistoryChunk0194
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

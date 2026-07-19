import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0185

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0185 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 190336
  | _ => True

theorem anchorPart7_0185 : anchorPartValid7_0185 anchorHistoryChunk0185 := by
  unfold anchorPartValid7_0185 anchorHistoryChunk0185
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

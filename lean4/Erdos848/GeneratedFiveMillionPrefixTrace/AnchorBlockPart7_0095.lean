import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0095

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0095 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 98176
  | _ => True

theorem anchorPart7_0095 : anchorPartValid7_0095 anchorHistoryChunk0095 := by
  unfold anchorPartValid7_0095 anchorHistoryChunk0095
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

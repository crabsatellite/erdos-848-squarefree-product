import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0076

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0076 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 78720
  | _ => True

theorem anchorPart7_0076 : anchorPartValid7_0076 anchorHistoryChunk0076 := by
  unfold anchorPartValid7_0076 anchorHistoryChunk0076
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

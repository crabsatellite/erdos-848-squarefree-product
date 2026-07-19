import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0093

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0093 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 96128
  | _ => True

theorem anchorPart7_0093 : anchorPartValid7_0093 anchorHistoryChunk0093 := by
  unfold anchorPartValid7_0093 anchorHistoryChunk0093
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

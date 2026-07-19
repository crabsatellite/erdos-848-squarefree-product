import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0061

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0061 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 63360
  | _ => True

theorem anchorPart7_0061 : anchorPartValid7_0061 anchorHistoryChunk0061 := by
  unfold anchorPartValid7_0061 anchorHistoryChunk0061
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

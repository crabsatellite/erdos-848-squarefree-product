import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0149

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0149 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 153472
  | _ => True

theorem anchorPart7_0149 : anchorPartValid7_0149 anchorHistoryChunk0149 := by
  unfold anchorPartValid7_0149 anchorHistoryChunk0149
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

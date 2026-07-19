import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0000

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0000 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 896
  | _ => True

theorem anchorPart7_0000 : anchorPartValid7_0000 anchorHistoryChunk0000 := by
  unfold anchorPartValid7_0000 anchorHistoryChunk0000
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

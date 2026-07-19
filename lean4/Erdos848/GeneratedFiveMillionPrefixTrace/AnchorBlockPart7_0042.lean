import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0042

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0042 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 43904
  | _ => True

theorem anchorPart7_0042 : anchorPartValid7_0042 anchorHistoryChunk0042 := by
  unfold anchorPartValid7_0042 anchorHistoryChunk0042
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

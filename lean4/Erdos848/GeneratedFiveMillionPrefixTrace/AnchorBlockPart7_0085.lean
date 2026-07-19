import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0085

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0085 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 87936
  | _ => True

theorem anchorPart7_0085 : anchorPartValid7_0085 anchorHistoryChunk0085 := by
  unfold anchorPartValid7_0085 anchorHistoryChunk0085
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

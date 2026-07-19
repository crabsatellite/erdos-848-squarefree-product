import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0014

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0014 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 15232
  | _ => True

theorem anchorPart7_0014 : anchorPartValid7_0014 anchorHistoryChunk0014 := by
  unfold anchorPartValid7_0014 anchorHistoryChunk0014
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0173

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0173 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 178048
  | _ => True

theorem anchorPart7_0173 : anchorPartValid7_0173 anchorHistoryChunk0173 := by
  unfold anchorPartValid7_0173 anchorHistoryChunk0173
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

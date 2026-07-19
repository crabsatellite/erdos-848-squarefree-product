import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0012

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0012 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 12672
  | _ => True

theorem anchorPart3_0012 : anchorPartValid3_0012 anchorHistoryChunk0012 := by
  unfold anchorPartValid3_0012 anchorHistoryChunk0012
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

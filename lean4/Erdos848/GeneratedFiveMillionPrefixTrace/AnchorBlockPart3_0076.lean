import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0076

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0076 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 78208
  | _ => True

theorem anchorPart3_0076 : anchorPartValid3_0076 anchorHistoryChunk0076 := by
  unfold anchorPartValid3_0076 anchorHistoryChunk0076
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

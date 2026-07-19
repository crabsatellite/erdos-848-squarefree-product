import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0080

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0080 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 82304
  | _ => True

theorem anchorPart3_0080 : anchorPartValid3_0080 anchorHistoryChunk0080 := by
  unfold anchorPartValid3_0080 anchorHistoryChunk0080
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

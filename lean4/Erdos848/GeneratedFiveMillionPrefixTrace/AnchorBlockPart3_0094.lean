import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0094

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0094 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 96640
  | _ => True

theorem anchorPart3_0094 : anchorPartValid3_0094 anchorHistoryChunk0094 := by
  unfold anchorPartValid3_0094 anchorHistoryChunk0094
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0015

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0015 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 15744
  | _ => True

theorem anchorPart3_0015 : anchorPartValid3_0015 anchorHistoryChunk0015 := by
  unfold anchorPartValid3_0015 anchorHistoryChunk0015
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

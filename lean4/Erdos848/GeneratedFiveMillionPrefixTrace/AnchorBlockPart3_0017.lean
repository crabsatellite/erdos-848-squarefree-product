import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0017

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0017 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 17792
  | _ => True

theorem anchorPart3_0017 : anchorPartValid3_0017 anchorHistoryChunk0017 := by
  unfold anchorPartValid3_0017 anchorHistoryChunk0017
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

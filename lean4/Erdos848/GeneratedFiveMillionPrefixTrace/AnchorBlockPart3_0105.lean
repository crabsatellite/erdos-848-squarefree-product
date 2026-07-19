import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0105

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0105 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 107904
  | _ => True

theorem anchorPart3_0105 : anchorPartValid3_0105 anchorHistoryChunk0105 := by
  unfold anchorPartValid3_0105 anchorHistoryChunk0105
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

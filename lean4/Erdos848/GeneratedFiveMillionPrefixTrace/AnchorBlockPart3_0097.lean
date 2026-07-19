import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0097

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0097 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 99712
  | _ => True

theorem anchorPart3_0097 : anchorPartValid3_0097 anchorHistoryChunk0097 := by
  unfold anchorPartValid3_0097 anchorHistoryChunk0097
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

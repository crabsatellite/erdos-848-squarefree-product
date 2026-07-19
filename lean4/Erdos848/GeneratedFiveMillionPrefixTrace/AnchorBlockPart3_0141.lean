import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0141

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0141 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 144768
  | _ => True

theorem anchorPart3_0141 : anchorPartValid3_0141 anchorHistoryChunk0141 := by
  unfold anchorPartValid3_0141 anchorHistoryChunk0141
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

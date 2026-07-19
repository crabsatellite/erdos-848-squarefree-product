import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0065

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0065 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 66944
  | _ => True

theorem anchorPart3_0065 : anchorPartValid3_0065 anchorHistoryChunk0065 := by
  unfold anchorPartValid3_0065 anchorHistoryChunk0065
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

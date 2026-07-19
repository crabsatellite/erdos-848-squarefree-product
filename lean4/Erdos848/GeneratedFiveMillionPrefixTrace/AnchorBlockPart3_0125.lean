import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0125

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0125 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 128384
  | _ => True

theorem anchorPart3_0125 : anchorPartValid3_0125 anchorHistoryChunk0125 := by
  unfold anchorPartValid3_0125 anchorHistoryChunk0125
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

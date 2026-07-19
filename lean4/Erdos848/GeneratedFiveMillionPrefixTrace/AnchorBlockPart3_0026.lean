import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0026

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0026 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 27008
  | _ => True

theorem anchorPart3_0026 : anchorPartValid3_0026 anchorHistoryChunk0026 := by
  unfold anchorPartValid3_0026 anchorHistoryChunk0026
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

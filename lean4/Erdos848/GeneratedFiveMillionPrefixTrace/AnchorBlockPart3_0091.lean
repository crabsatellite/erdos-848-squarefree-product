import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0091

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0091 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 93568
  | _ => True

theorem anchorPart3_0091 : anchorPartValid3_0091 anchorHistoryChunk0091 := by
  unfold anchorPartValid3_0091 anchorHistoryChunk0091
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

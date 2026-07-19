import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0047

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0047 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 48512
  | _ => True

theorem anchorPart3_0047 : anchorPartValid3_0047 anchorHistoryChunk0047 := by
  unfold anchorPartValid3_0047 anchorHistoryChunk0047
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

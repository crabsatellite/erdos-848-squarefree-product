import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0006

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0006 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 6400
  | _ => True

theorem anchorPart2_0006 : anchorPartValid2_0006 anchorHistoryChunk0006 := by
  unfold anchorPartValid2_0006 anchorHistoryChunk0006
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

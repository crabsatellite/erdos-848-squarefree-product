import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0010

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0010 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 10496
  | _ => True

theorem anchorPart2_0010 : anchorPartValid2_0010 anchorHistoryChunk0010 := by
  unfold anchorPartValid2_0010 anchorHistoryChunk0010
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0117

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0117 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 120064
  | _ => True

theorem anchorPart2_0117 : anchorPartValid2_0117 anchorHistoryChunk0117 := by
  unfold anchorPartValid2_0117 anchorHistoryChunk0117
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

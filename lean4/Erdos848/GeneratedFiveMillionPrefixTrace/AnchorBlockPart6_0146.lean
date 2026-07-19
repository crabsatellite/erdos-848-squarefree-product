import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0146

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0146 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 150272
  | _ => True

theorem anchorPart6_0146 : anchorPartValid6_0146 anchorHistoryChunk0146 := by
  unfold anchorPartValid6_0146 anchorHistoryChunk0146
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

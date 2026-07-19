import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0025

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0025 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 26368
  | _ => True

theorem anchorPart6_0025 : anchorPartValid6_0025 anchorHistoryChunk0025 := by
  unfold anchorPartValid6_0025 anchorHistoryChunk0025
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

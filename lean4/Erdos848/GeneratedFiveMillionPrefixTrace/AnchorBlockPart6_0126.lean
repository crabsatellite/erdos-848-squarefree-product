import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0126

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0126 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 129792
  | _ => True

theorem anchorPart6_0126 : anchorPartValid6_0126 anchorHistoryChunk0126 := by
  unfold anchorPartValid6_0126 anchorHistoryChunk0126
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

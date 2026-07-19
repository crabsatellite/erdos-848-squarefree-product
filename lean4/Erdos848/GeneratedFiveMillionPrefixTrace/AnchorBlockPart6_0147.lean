import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0147

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0147 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 151296
  | _ => True

theorem anchorPart6_0147 : anchorPartValid6_0147 anchorHistoryChunk0147 := by
  unfold anchorPartValid6_0147 anchorHistoryChunk0147
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

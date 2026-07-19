import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0015

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0015 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 16128
  | _ => True

theorem anchorPart6_0015 : anchorPartValid6_0015 anchorHistoryChunk0015 := by
  unfold anchorPartValid6_0015 anchorHistoryChunk0015
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

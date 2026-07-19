import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0021

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0021 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 22272
  | _ => True

theorem anchorPart6_0021 : anchorPartValid6_0021 anchorHistoryChunk0021 := by
  unfold anchorPartValid6_0021 anchorHistoryChunk0021
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

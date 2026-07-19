import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0189

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0189 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 194304
  | _ => True

theorem anchorPart6_0189 : anchorPartValid6_0189 anchorHistoryChunk0189 := by
  unfold anchorPartValid6_0189 anchorHistoryChunk0189
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

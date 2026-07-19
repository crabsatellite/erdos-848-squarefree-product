import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0009

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0009 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 9984
  | _ => True

theorem anchorPart6_0009 : anchorPartValid6_0009 anchorHistoryChunk0009 := by
  unfold anchorPartValid6_0009 anchorHistoryChunk0009
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

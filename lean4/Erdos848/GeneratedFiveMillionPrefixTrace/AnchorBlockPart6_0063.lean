import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0063

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0063 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 65280
  | _ => True

theorem anchorPart6_0063 : anchorPartValid6_0063 anchorHistoryChunk0063 := by
  unfold anchorPartValid6_0063 anchorHistoryChunk0063
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

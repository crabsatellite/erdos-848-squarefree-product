import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0074

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0074 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 76544
  | _ => True

theorem anchorPart6_0074 : anchorPartValid6_0074 anchorHistoryChunk0074 := by
  unfold anchorPartValid6_0074 anchorHistoryChunk0074
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

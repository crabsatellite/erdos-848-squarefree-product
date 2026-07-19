import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0142

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0142 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 146176
  | _ => True

theorem anchorPart6_0142 : anchorPartValid6_0142 anchorHistoryChunk0142 := by
  unfold anchorPartValid6_0142 anchorHistoryChunk0142
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

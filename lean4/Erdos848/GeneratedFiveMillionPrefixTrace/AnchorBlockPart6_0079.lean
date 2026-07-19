import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0079

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0079 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 81664
  | _ => True

theorem anchorPart6_0079 : anchorPartValid6_0079 anchorHistoryChunk0079 := by
  unfold anchorPartValid6_0079 anchorHistoryChunk0079
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

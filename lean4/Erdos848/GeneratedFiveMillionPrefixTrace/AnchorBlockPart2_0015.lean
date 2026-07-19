import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0015

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0015 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 15616
  | _ => True

theorem anchorPart2_0015 : anchorPartValid2_0015 anchorHistoryChunk0015 := by
  unfold anchorPartValid2_0015 anchorHistoryChunk0015
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

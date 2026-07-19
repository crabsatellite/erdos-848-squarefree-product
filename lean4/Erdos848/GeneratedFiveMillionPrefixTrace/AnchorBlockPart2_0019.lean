import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0019

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0019 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 19712
  | _ => True

theorem anchorPart2_0019 : anchorPartValid2_0019 anchorHistoryChunk0019 := by
  unfold anchorPartValid2_0019 anchorHistoryChunk0019
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

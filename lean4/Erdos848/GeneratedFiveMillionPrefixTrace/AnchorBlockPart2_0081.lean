import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0081

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0081 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 83200
  | _ => True

theorem anchorPart2_0081 : anchorPartValid2_0081 anchorHistoryChunk0081 := by
  unfold anchorPartValid2_0081 anchorHistoryChunk0081
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

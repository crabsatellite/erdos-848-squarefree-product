import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0045

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0045 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 46336
  | _ => True

theorem anchorPart2_0045 : anchorPartValid2_0045 anchorHistoryChunk0045 := by
  unfold anchorPartValid2_0045 anchorHistoryChunk0045
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

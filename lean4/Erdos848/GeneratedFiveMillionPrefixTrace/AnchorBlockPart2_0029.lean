import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0029

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0029 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 29952
  | _ => True

theorem anchorPart2_0029 : anchorPartValid2_0029 anchorHistoryChunk0029 := by
  unfold anchorPartValid2_0029 anchorHistoryChunk0029
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

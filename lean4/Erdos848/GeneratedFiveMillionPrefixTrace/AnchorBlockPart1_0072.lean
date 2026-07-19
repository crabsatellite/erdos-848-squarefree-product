import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0072

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0072 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 73856
  | _ => True

theorem anchorPart1_0072 : anchorPartValid1_0072 anchorHistoryChunk0072 := by
  unfold anchorPartValid1_0072 anchorHistoryChunk0072
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

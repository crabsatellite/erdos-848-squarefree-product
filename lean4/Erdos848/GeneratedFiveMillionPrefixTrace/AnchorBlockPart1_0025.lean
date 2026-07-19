import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0025

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0025 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 25728
  | _ => True

theorem anchorPart1_0025 : anchorPartValid1_0025 anchorHistoryChunk0025 := by
  unfold anchorPartValid1_0025 anchorHistoryChunk0025
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

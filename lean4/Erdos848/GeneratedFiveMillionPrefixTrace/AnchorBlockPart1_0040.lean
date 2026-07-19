import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0040

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0040 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 41088
  | _ => True

theorem anchorPart1_0040 : anchorPartValid1_0040 anchorHistoryChunk0040 := by
  unfold anchorPartValid1_0040 anchorHistoryChunk0040
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

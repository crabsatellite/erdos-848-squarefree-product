import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0108

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0108 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 110720
  | _ => True

theorem anchorPart1_0108 : anchorPartValid1_0108 anchorHistoryChunk0108 := by
  unfold anchorPartValid1_0108 anchorHistoryChunk0108
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

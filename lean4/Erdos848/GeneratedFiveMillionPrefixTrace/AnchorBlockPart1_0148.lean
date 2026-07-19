import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0148

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0148 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 151680
  | _ => True

theorem anchorPart1_0148 : anchorPartValid1_0148 anchorHistoryChunk0148 := by
  unfold anchorPartValid1_0148 anchorHistoryChunk0148
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

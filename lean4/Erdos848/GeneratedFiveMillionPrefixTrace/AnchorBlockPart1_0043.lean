import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0043

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0043 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 44160
  | _ => True

theorem anchorPart1_0043 : anchorPartValid1_0043 anchorHistoryChunk0043 := by
  unfold anchorPartValid1_0043 anchorHistoryChunk0043
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

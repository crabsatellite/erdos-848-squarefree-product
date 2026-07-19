import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0102

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0102 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 104576
  | _ => True

theorem anchorPart1_0102 : anchorPartValid1_0102 anchorHistoryChunk0102 := by
  unfold anchorPartValid1_0102 anchorHistoryChunk0102
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

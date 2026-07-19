import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0132

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0132 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 135296
  | _ => True

theorem anchorPart1_0132 : anchorPartValid1_0132 anchorHistoryChunk0132 := by
  unfold anchorPartValid1_0132 anchorHistoryChunk0132
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

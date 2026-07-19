import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0127

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0127 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 130176
  | _ => True

theorem anchorPart1_0127 : anchorPartValid1_0127 anchorHistoryChunk0127 := by
  unfold anchorPartValid1_0127 anchorHistoryChunk0127
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0060

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0060 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 61568
  | _ => True

theorem anchorPart1_0060 : anchorPartValid1_0060 anchorHistoryChunk0060 := by
  unfold anchorPartValid1_0060 anchorHistoryChunk0060
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

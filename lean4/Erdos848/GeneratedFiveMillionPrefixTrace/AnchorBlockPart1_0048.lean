import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0048

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0048 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 49280
  | _ => True

theorem anchorPart1_0048 : anchorPartValid1_0048 anchorHistoryChunk0048 := by
  unfold anchorPartValid1_0048 anchorHistoryChunk0048
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

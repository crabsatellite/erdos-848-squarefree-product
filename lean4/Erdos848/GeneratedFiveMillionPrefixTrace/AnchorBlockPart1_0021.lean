import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0021

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0021 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 21632
  | _ => True

theorem anchorPart1_0021 : anchorPartValid1_0021 anchorHistoryChunk0021 := by
  unfold anchorPartValid1_0021 anchorHistoryChunk0021
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

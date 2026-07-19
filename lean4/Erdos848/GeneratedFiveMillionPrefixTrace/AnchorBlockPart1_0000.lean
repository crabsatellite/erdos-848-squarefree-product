import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0000

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0000 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 128
  | _ => True

theorem anchorPart1_0000 : anchorPartValid1_0000 anchorHistoryChunk0000 := by
  unfold anchorPartValid1_0000 anchorHistoryChunk0000
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

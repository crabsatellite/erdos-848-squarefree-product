import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0034

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0034 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 34944
  | _ => True

theorem anchorPart1_0034 : anchorPartValid1_0034 anchorHistoryChunk0034 := by
  unfold anchorPartValid1_0034 anchorHistoryChunk0034
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0182

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0182 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 186496
  | _ => True

theorem anchorPart1_0182 : anchorPartValid1_0182 anchorHistoryChunk0182 := by
  unfold anchorPartValid1_0182 anchorHistoryChunk0182
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

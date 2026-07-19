import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0020

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0020 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 20608
  | _ => True

theorem anchorPart1_0020 : anchorPartValid1_0020 anchorHistoryChunk0020 := by
  unfold anchorPartValid1_0020 anchorHistoryChunk0020
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0091

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0091 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 93824
  | _ => True

theorem anchorPart5_0091 : anchorPartValid5_0091 anchorHistoryChunk0091 := by
  unfold anchorPartValid5_0091 anchorHistoryChunk0091
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

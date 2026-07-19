import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0114

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0114 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 117376
  | _ => True

theorem anchorPart5_0114 : anchorPartValid5_0114 anchorHistoryChunk0114 := by
  unfold anchorPartValid5_0114 anchorHistoryChunk0114
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

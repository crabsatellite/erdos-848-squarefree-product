import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0044

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0044 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 45056
  | _ => True

theorem anchorPart0_0044 : anchorPartValid0_0044 anchorHistoryChunk0044 := by
  unfold anchorPartValid0_0044 anchorHistoryChunk0044
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

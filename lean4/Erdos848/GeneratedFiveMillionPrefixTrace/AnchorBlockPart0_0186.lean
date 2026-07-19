import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0186

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0186 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 190464
  | _ => True

theorem anchorPart0_0186 : anchorPartValid0_0186 anchorHistoryChunk0186 := by
  unfold anchorPartValid0_0186 anchorHistoryChunk0186
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

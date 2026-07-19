import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0125

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0125 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 128000
  | _ => True

theorem anchorPart0_0125 : anchorPartValid0_0125 anchorHistoryChunk0125 := by
  unfold anchorPartValid0_0125 anchorHistoryChunk0125
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

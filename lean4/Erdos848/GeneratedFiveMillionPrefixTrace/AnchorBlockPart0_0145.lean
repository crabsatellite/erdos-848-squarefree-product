import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0145

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0145 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 148480
  | _ => True

theorem anchorPart0_0145 : anchorPartValid0_0145 anchorHistoryChunk0145 := by
  unfold anchorPartValid0_0145 anchorHistoryChunk0145
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0189

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0189 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 193536
  | _ => True

theorem anchorPart0_0189 : anchorPartValid0_0189 anchorHistoryChunk0189 := by
  unfold anchorPartValid0_0189 anchorHistoryChunk0189
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

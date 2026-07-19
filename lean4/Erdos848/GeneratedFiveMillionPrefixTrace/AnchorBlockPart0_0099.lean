import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0099

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0099 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 101376
  | _ => True

theorem anchorPart0_0099 : anchorPartValid0_0099 anchorHistoryChunk0099 := by
  unfold anchorPartValid0_0099 anchorHistoryChunk0099
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0067

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0067 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 68992
  | _ => True

theorem anchorPart3_0067 : anchorPartValid3_0067 anchorHistoryChunk0067 := by
  unfold anchorPartValid3_0067 anchorHistoryChunk0067
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

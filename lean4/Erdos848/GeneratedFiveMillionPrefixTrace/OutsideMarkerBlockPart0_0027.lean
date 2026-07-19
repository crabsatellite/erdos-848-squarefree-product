import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0027

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27648
  | _ => True

theorem outsideMarkerPart0_0027 : outsideMarkerPartValid0_0027 outsideHistoryChunk0027 := by
  unfold outsideMarkerPartValid0_0027 outsideHistoryChunk0027
  decide

def outsideMarkerPartValid1_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27776
  | _ => True

theorem outsideMarkerPart1_0027 : outsideMarkerPartValid1_0027 outsideHistoryChunk0027 := by
  unfold outsideMarkerPartValid1_0027 outsideHistoryChunk0027
  decide

def outsideMarkerPartValid2_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27904
  | _ => True

theorem outsideMarkerPart2_0027 : outsideMarkerPartValid2_0027 outsideHistoryChunk0027 := by
  unfold outsideMarkerPartValid2_0027 outsideHistoryChunk0027
  decide

def outsideMarkerPartValid3_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28032
  | _ => True

theorem outsideMarkerPart3_0027 : outsideMarkerPartValid3_0027 outsideHistoryChunk0027 := by
  unfold outsideMarkerPartValid3_0027 outsideHistoryChunk0027
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

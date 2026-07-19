import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0016

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0016 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16384
  | _ => True

theorem outsideMarkerPart0_0016 : outsideMarkerPartValid0_0016 outsideHistoryChunk0016 := by
  unfold outsideMarkerPartValid0_0016 outsideHistoryChunk0016
  decide

def outsideMarkerPartValid1_0016 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16512
  | _ => True

theorem outsideMarkerPart1_0016 : outsideMarkerPartValid1_0016 outsideHistoryChunk0016 := by
  unfold outsideMarkerPartValid1_0016 outsideHistoryChunk0016
  decide

def outsideMarkerPartValid2_0016 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16640
  | _ => True

theorem outsideMarkerPart2_0016 : outsideMarkerPartValid2_0016 outsideHistoryChunk0016 := by
  unfold outsideMarkerPartValid2_0016 outsideHistoryChunk0016
  decide

def outsideMarkerPartValid3_0016 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16768
  | _ => True

theorem outsideMarkerPart3_0016 : outsideMarkerPartValid3_0016 outsideHistoryChunk0016 := by
  unfold outsideMarkerPartValid3_0016 outsideHistoryChunk0016
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

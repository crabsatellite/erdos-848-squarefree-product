import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0074

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 75776
  | _ => True

theorem outsideMarkerPart0_0074 : outsideMarkerPartValid0_0074 outsideHistoryChunk0074 := by
  unfold outsideMarkerPartValid0_0074 outsideHistoryChunk0074
  decide

def outsideMarkerPartValid1_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 75904
  | _ => True

theorem outsideMarkerPart1_0074 : outsideMarkerPartValid1_0074 outsideHistoryChunk0074 := by
  unfold outsideMarkerPartValid1_0074 outsideHistoryChunk0074
  decide

def outsideMarkerPartValid2_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 76032
  | _ => True

theorem outsideMarkerPart2_0074 : outsideMarkerPartValid2_0074 outsideHistoryChunk0074 := by
  unfold outsideMarkerPartValid2_0074 outsideHistoryChunk0074
  decide

def outsideMarkerPartValid3_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 76160
  | _ => True

theorem outsideMarkerPart3_0074 : outsideMarkerPartValid3_0074 outsideHistoryChunk0074 := by
  unfold outsideMarkerPartValid3_0074 outsideHistoryChunk0074
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace

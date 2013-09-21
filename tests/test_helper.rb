$:.unshift File.join(File.dirname(__FILE__),'..','lib')
require 'skanetrafiken'
$test_files_dir = File.join(File.dirname(__FILE__),'testfiles')
class GetDepartureArrival
    def initialize
        @dir = $test_files_dir
    end
    def get
        return File.open(File.join(@dir,'GetDepartureArrival.xml'), "r").read
    end
    def get_station_results
        return File.open(File.join(@dir,'GetDepartureArrival_stationresults.xml'), "r").read
    end
    def get_station_results2
        return File.open(File.join(@dir,'GetDepartureArrival_stationresults2.xml'), "r").read
    end
end

class GetStartEndPoint
    def initialize
        @dir = $test_files_dir
    end
    def get
        return File.open(File.join(@dir,'GetStartEndPoint.xml'), "r").read
    end
    def get_querystation
        return File.open(File.join(@dir,'GetStartEndPoint_querystation.xml'), "r").read
    end
end

class GetJourney
    def initialize
        @dir = $test_files_dir
    end
    def get
        return File.open(File.join(@dir,'GetJourney.xml'), "r").read
    end
    def get_resultspage
        return File.open(File.join(@dir,'GetJourney_resultspage.xml'), "r").read
    end
end
class ElasticTranscoderOptionService
  # Returns default audio/video output options for ActiveEncode.
  # @param fileset the data to be persisted
  # @return an array of hashes of output options for audio/video
  def self.call(file_set)
    file_name = file_set.label
    options = { pipeline_id: "1548794014119-h8cf0r", masterfile_bucket: "active-encode-test0" }

    options[:outputs] = [{ key: "quality-medium/#{file_name}",
                           preset_id: "1351620000001-000010" },
                         { key: "quality-high/#{file_name}",
                           preset_id: "1351620000001-000001" }]
    [options]
  end

end

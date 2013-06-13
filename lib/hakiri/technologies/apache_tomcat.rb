class Hakiri::ApacheTomcat < Hakiri::Technology
  def version
    begin
      output = `#{@path}trinidad -v 2>&1`
      /\d+(\.\d+)?(\.\d+)?\)/.match(output)[0].gsub(/\)/, '')
    rescue Exception => e
      puts_error(e, output)
      nil
    end
  end
end
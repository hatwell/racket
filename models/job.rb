require_relative('db/sql_runner')

class Job
  attr_reader :position, :company, :job_offer, :stage_of_process, :application_sent

  def initialize params
    @position = params['position']
    @company = params['company']
    @job_offer = params['job_offer']
    @stage_of_process = params['stage_of_process']
    @application_sent = param['application_sent']
  end
end

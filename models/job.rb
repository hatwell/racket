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

  def save
    sql = "INSERT INTO jobs(position, company, job_offer, stage_of_process, application_sent) VALUES ('#{@position}', '#{@company}', #{@job_offer}, '#{@stage_of_process}', #{@application_sent}) RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first['id'].to_i
  end

  def update
  end

  def delete
  end

  def find_by_id(id)
  end

  def self.all
    sql = "SELECT * FROM jobs"
    Job.map_items(sql)
  end

  def self.map_items
    jobs = SqlRunner.run(sql)
    result = jobs.map {|job| Job.new(job)}
    return result
  end
end

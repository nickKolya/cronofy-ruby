module Cronofy
  module ConferencingServices
    def conferencing_auth_link(body)
      response = wrapped_request { post('/v1/conferencing_service_authorizations', body) }
      parse_json(CronofyMash, 'authorization_request', response)
    end
  end
end

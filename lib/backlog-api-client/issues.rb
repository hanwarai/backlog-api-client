module BacklogApiClient
  class Client
    class Issues
      RESOURCE_NAME = 'issues'

      def initialize(client)
        @client = client
      end

      def list(params)
        @client.get(RESOURCE_NAME, params)
      end

      def information(isuue_id_or_key)
        @client.get("#{RESOURCE_NAME}/#{isuue_id_or_key}")
      end

      def create(request)
        @client.post(RESOURCE_NAME, request)
      end
    end
  end
end

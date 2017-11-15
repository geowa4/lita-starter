module Lita
  module Handlers
    # Sample handler that echoes what it's told.
    class Echo < Handler
      route(/^echo\s+(.+)/i, :echo, command: true)

      def echo(response)
        response.reply response.message.body
      end

      Lita.register_handler(self)
    end
  end
end

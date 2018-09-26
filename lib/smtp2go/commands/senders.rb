# frozen_string_literal: true

require 'thor'

module Smtp2go
  module Commands
    class Senders < Thor

      namespace :senders

      desc 'add', 'Add one or more allowed senders to your account'
      method_option :help, aliases: '-h', type: :boolean,
                           desc: 'Display usage information'
      def add(*)
        if options[:help]
          invoke :help, ['add']
        else
          require_relative 'senders/add'
          Smtp2go::Commands::Senders::Add.new(options).execute
        end
      end

      desc 'remove', 'Remove one or more allowed senders from your account'
      method_option :help, aliases: '-h', type: :boolean,
                           desc: 'Display usage information'
      def remove(*)
        if options[:help]
          invoke :help, ['remove']
        else
          require_relative 'senders/remove'
          Smtp2go::Commands::Senders::Remove.new(options).execute
        end
      end

      desc 'update', 'Update the allowed senders list on your account'
      method_option :help, aliases: '-h', type: :boolean,
                           desc: 'Display usage information'
      def update(*)
        if options[:help]
          invoke :help, ['update']
        else
          require_relative 'senders/update'
          Smtp2go::Commands::Senders::Update.new(options).execute
        end
      end

      desc 'view', 'Returns the allowed sender list for your account'
      method_option :help, aliases: '-h', type: :boolean,
                           desc: 'Display usage information'
      def view(*)
        if options[:help]
          invoke :help, ['view']
        else
          require_relative 'senders/view'
          Smtp2go::Commands::Senders::View.new(options).execute
        end
      end
    end
  end
end

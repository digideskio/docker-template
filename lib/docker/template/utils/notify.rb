# ----------------------------------------------------------------------------
# Frozen-string-literal: true
# Copyright: 2015 - 2016 Jordon Bedwell - Apache v2.0 License
# Encoding: utf-8
# ----------------------------------------------------------------------------

module Docker
  module Template
    module Utils
      module Notify
        module_function

        # --------------------------------------------------------------------
        # @param [Normal,Rootfs] builder the builder being used.
        # Notify the user of a push that is happening.
        # --------------------------------------------------------------------

        def push(builder)
          $stdout.puts Simple::Ansi.green(
            "Pushing: #{builder.repo}"
          )
        end

        # --------------------------------------------------------------------
        # @param [Normal,Rootfs] builder the builder being used.
        # Notify the user that we are tag aliasing.
        # --------------------------------------------------------------------

        def alias(builder)
          repo = builder.repo
          parent_repo = builder.parent_repo
          msg = Simple::Ansi.green("Aliasing #{repo} -> #{parent_repo}")
          $stdout.puts msg
        end

        # --------------------------------------------------------------------
        # @param [Repo] repo the repository currently being built.
        # @param [Hash] *kwd keywords are passed directly to `repo#to_s`
        # Notify the user that we are building their repository.
        # --------------------------------------------------------------------

        def build(repo, **kwd)
          img = repo.to_s(**kwd)
          msg = Simple::Ansi.green("Building: #{img}")
          $stdout.puts msg
        end
      end
    end
  end
end

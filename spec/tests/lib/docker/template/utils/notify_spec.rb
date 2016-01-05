# Frozen-string-literal: true
# Copyright: 2015 - 2016 Jordon Bedwell - Apache v2.0 License
# Encoding: utf-8

require "rspec/helper"
describe Docker::Template::Utils::Notify do
  include_context :repos

  #

  describe "#alias" do
    it "should have some color" do
      capture = capture_io { subject.alias(mocked_repos.to_scratch) }
      expect(Simple::Ansi.has?(capture[:stdout])).to eq true
    end
  end

  #

  describe "#build" do
    it "should output the user, tag and repo" do
      capture = capture_io { subject.build(mocked_repos.to_repo) }
      expect(capture).to include({
        :stdout => %r!building:[:a-z\s]+/default:latest!i
      })
    end

    #

    context "(rootfs: true)" do
      it "should output a rootfs image if told to" do
        capture = capture_io do
          subject.build(mocked_repos.to_repo, {
            rootfs: true
          })
        end

        #

        expect(capture).to include({
          :stdout => %r!building[:a-z\s]+/rootfs:default!i
        })
      end
    end
  end
end
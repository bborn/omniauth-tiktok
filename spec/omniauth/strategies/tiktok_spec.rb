# frozen_string_literal: true

require "spec_helper"

describe OmniAuth::Strategies::Tiktok do
  subject do
    OmniAuth::Strategies::Tiktok.new(
      "app",
      name: "thing",
      options: {
        authorize_params: {
          thing: "stuff"
        }
      }
    )
  end

  context "when fetch client options" do
    # it "have correct site" do
    #   expect(subject.options.client_options.site).to eq("https://open.tiktokapis.com/v2/")
    # end

    # it "have correct authorize url" do
    #   expect(subject.options.client_options.authorize_url).to eq("https://www.tiktok.com/v2/auth/authorize/")
    # end

    # it "have correct token url" do
    #   expect(subject.options.client_options.token_url).to eq("https://open.tiktokapis.com/v2/oauth/token")
    # end

    it "has client_key and not client_id" do
      subject.authorize_params
    end
  end
end

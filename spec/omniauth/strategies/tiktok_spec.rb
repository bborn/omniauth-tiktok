# frozen_string_literal: true

require 'spec_helper'

describe OmniAuth::Strategies::Tiktok do
  subject do
    OmniAuth::Strategies::Tiktok.new({})
  end

  context 'when fetch client options' do
    it 'have correct site' do
      expect(subject.options.client_options.site).to eq('https://open.tiktokapis.com/v2/')
    end

    it 'have correct authorize url' do
      expect(subject.options.client_options.authorize_url).to eq('https://open.tiktokapis.com/v2/platform/oauth/connect')
    end

    it 'have correct token url' do
      expect(subject.options.client_options.token_url).to eq('https://open.tiktokapis.com/v2/oauth/token')
    end
  end
end

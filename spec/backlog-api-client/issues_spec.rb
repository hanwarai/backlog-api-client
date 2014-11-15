require 'spec_helper'

describe BacklogApiClient::Client::Issues do
  let(:client) { double('client') }

  describe '#information' do
    let(:test_issue_id) { 'TEST-ISSUE-ID' }
    before { expect(client).to receive(:get).with("issues/#{test_issue_id}").and_return('ok') }
    subject { described_class.new(client).information(test_issue_id) }
    it { should eq 'ok' }
  end

  describe '#create' do
    let(:request) { 'request' }
    before { expect(client).to receive(:post).with('issues', request).and_return('ok') }
    subject { described_class.new(client).create(request) }
    it { should eq 'ok' }
  end
end

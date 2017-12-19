require 'rails_helper'

RSpec.describe 'DragaoBases', :type => :request do
  describe 'GET /dragao_bases' do
    it 'works! (now write some real specs)' do
      get dragao_bases_path
      expect(response).to have_http_status(200)
    end
  end
end

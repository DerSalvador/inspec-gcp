# frozen_string_literal: true

require 'gcp_backend'

module Inspec::Resources
  class GoogleOrganizationPolicy < GcpResourceBase
    name 'google_organization_policy'
    desc 'Verifies configuration of an organization policy'

    example "
      describe google_organization(name: 'google.com') do
        it { should exist }
        its('name') { should eq 'organizations/1234' }
        its('display_name') { should eq 'google.com' }
        its('lifecycle_state') { should eq 'ACTIVE' }
      end
    "
    def initialize(opts = {})
      super(opts)
      @display_name = opts[:name]
      @constraint = opts[:constraint]
      catch_gcp_errors do
        org_policy_request = Google::Apis::CloudresourcemanagerV1::GetOrgPolicyRequest.new
        org_policy_request.constraint = opts[:constraint]
        @organization_policy = @gcp.gcp_project_client.get_organization_org_policy(opts[:name], org_policy_request)
        create_resource_methods(@organization_policy)
      end
    end

    def exists?
      !@organization_policy.nil?
    end

    def to_s
      "Organization #{@display_name} policy for constraint #{@constraint}"
    end
  end
end

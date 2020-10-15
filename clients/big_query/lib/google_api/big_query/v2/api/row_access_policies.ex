# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.BigQuery.V2.Api.RowAccessPolicies do
  @moduledoc """
  API calls for all endpoints tagged `RowAccessPolicies`.
  """

  alias GoogleApi.BigQuery.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Lists all row access policies on the specified table.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Required. Project ID of the row access policies to list.
  *   `dataset_id` (*type:* `String.t`) - Required. Dataset ID of row access policies to list.
  *   `table_id` (*type:* `String.t`) - Required. Table ID of the table to list row access policies.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:pageSize` (*type:* `integer()`) - The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.
      *   `:pageToken` (*type:* `String.t`) - Page token, returned by a previous call, to request the next page of results.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BigQuery.V2.Model.ListRowAccessPoliciesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_row_access_policies_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.BigQuery.V2.Model.ListRowAccessPoliciesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def bigquery_row_access_policies_list(
        connection,
        project_id,
        dataset_id,
        table_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/bigquery/v2/projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies",
        %{
          "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
          "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1),
          "tableId" => URI.encode(table_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.BigQuery.V2.Model.ListRowAccessPoliciesResponse{}]
    )
  end
end
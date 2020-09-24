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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1RuntimeTraceConfigOverride do
  @moduledoc """
  NEXT ID: 7 Trace configuration override for a specific API proxy in an environment.

  ## Attributes

  *   `apiProxy` (*type:* `String.t`, *default:* `nil`) - Name of the API proxy that will have its trace configuration overridden following format: `organizations/{org}/apis/{api}`
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the trace config override in the following format: `organizations/{org}/environment/{env}/traceConfig/overrides/{override}`
  *   `revisionCreateTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp that the revision was created or updated.
  *   `revisionId` (*type:* `String.t`, *default:* `nil`) - Revision number which can be used by the runtime to detect if the trace config override has changed between two versions.
  *   `samplingConfig` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1RuntimeTraceSamplingConfig.t`, *default:* `nil`) - Trace configuration override for a specific API proxy in an environment.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Unique ID for the configuration override. The ID will only change if the override is deleted and recreated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiProxy => String.t(),
          :name => String.t(),
          :revisionCreateTime => DateTime.t(),
          :revisionId => String.t(),
          :samplingConfig =>
            GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1RuntimeTraceSamplingConfig.t(),
          :uid => String.t()
        }

  field(:apiProxy)
  field(:name)
  field(:revisionCreateTime, as: DateTime)
  field(:revisionId)

  field(:samplingConfig,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1RuntimeTraceSamplingConfig
  )

  field(:uid)
end

defimpl Poison.Decoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1RuntimeTraceConfigOverride do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1RuntimeTraceConfigOverride.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1RuntimeTraceConfigOverride do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end